const path=require('path'),
    //base='apuntes';
    base='formulario';

module.exports=(grunt)=>{
    require('time-grunt')(grunt);
    require('load-grunt-tasks')(grunt);

    grunt.initConfig({
        shell:{
            report:{
                command:(file)=>{
                    console.log('shell:report',file);

                    return [
                        'latex -interaction=nonstopmode '+base,
                        'dvipdf '+base
                    ].join(' && ');
                }
            },
            figure:{
                command:(file)=>{
                    console.log('shell:figure',file);

                    return 'gnuplot '+file;
                }
            }
        },
        watch:{
            report:{
                files:[
                    'formulario.tex',
                    'apuntes.tex',
                    'capitulo_*.tex',
                    'figura_*.tex'
                ],
                tasks:['shell:report']
            },
            figure:{
                files:['*.gp'],
                tasks:['shell:figure']
            }
        }
    });

    grunt.event.on('watch',(action,filepath,target)=>{
        console.log('watch ~>',action,filepath,target);

        grunt.config(
            ['watch',target,'tasks'].join('.'),
            ['shell',target,filepath].join(':')
        );
    });

    grunt.registerTask('serve',[
        'watch'
    ]);
};
