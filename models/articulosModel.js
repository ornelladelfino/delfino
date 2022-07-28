var pool = require('./bd');

async function getArticulos() {
    var query = 'select * from articulos order by id DESC';
    var rows = await pool.query(query);
    return rows;

}
async function insertArticulo(obj) {
    try {
        var query = 'insert into articulos set ?'
        var rows = await pool.query(query, [obj]);
        return rows
    } catch (error) {
        console.log(error);
        throw error;
    }
}



async function getArticuloByID(id) {
    var query = 'select * from articulos where id=?';
    var rows = await pool.query(query, [id]);
    return rows[0];
}
/* hasta aca, todo bien y en funcionamiento */

/* a partir de aca, tengo que revisar y no encuentro el problema */

async function modificarArticuloByID(obj, id) {
    try {
        var query = 'update articulos set ? where id=?'
        var rows = await pool.query(query, [obj, id]);
        return rows

    } catch (error) {
        throw error;
        /* console.log(error) */
    }
}


async function deleteArticuloByID(id) {
    var query = 'delete from articulos where id =?';
    var rows = await pool.query(query, [id]);
    return rows;

}

async function buscarArticulos(busqueda){
    var query = 'select * from articulos where titulo like ? or subtitulo like ? or cuerpo like ?';
    var rows = await pool.query(query, ['%' + busqueda + '%', '%' + busqueda + '%', '%' + busqueda + '%']);
    return rows;
   }

module.exports = { getArticulos, insertArticulo, deleteArticuloByID, getArticuloByID, modificarArticuloByID, buscarArticulos }