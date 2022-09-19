//La configuración por JS es mucha más sencilla que, por ejemplo, la configuración vía maven
function fn() {
    //Esta línea es necesaria si el servicio que estamos probando utiliza un certificado autofirmado
    karate.configure('ssl', { trustAll: true }); 
    return {};
}