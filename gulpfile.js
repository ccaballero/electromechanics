const {spawn}=require('child_process'),
    colors=require('colors'),
    {start,task,watch}=require('gulp'),
    {join}=require('path');

colors.enabled=true;

function getparams(){
    const params=process.argv
        .filter((i)=>{
            return /^--./.test(i);
        })
        .map((i)=>{
            const parse=/^--(.+)=(.*)$/.exec(i);

            return {
                key:parse[1],
                value:parse[2]
            };
        })
        .reduce((sum,i)=>{
            sum[i.key]=i.value;

            return sum;
        },{});

    if(params['dir']&&params['report']&&params['file']){
        return params;
    }
}

function compile(done){
    console.log(colors.green('compiling source file'));
    const params=getparams();

    if(params){
        var cmd=spawn([
            'cd "'+join(__dirname,params.dir,params.report)+'"',
            'latex -interaction=nonstopmode '+params.file+'.tex',
            'dvipdf '+params.file+'.dvi'
        ].join(';'),{
            shell:true
        });

        cmd.stderr.on('data',(data)=>{
            console.log(colors.red(data.toString()));
        });

        cmd.stdout.on('data',(data)=>{
            console.log(colors.grey(data.toString()));
        });

        cmd.on('close',(code)=>{
            console.log(colors.green('compile exited with code '+code));

            done();
        });
    }else{
        console.log(colors.blue('need parameters to compile'));

        done();
    }
}

task('compile',compile);

exports.default=function(){
    const params=getparams();

    if(params){
        const tex=join(params.dir,params.report,params.file+'.tex'),
            resources=join(params.dir,params.report,'resources')+'/*';

        console.log(colors.yellow('watching tex file: '+tex));
        console.log(colors.yellow('watching resources files: '+resources));

        watch([tex,resources],compile);
    }
};

