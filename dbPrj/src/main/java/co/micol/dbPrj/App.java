package co.micol.dbPrj;

import co.micol.dbPrj.db.DevServiceImpl;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
    	DevServiceImpl dao = new DevServiceImpl();
    	dao.selectList();
    }
}

//        DataSource dao = new DataSource();