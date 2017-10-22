/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendarver2DAO;
import travlendarver2.Activity;
import travlendarver2.DateParsing;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jeremia Geraldi
//    Contoh penggunaan model access(butuh balancing FE dan mockup(Menyusul ))
 */
public class ActivityAccess extends ControllerServices
{
    private final ActivityDAO dao;

    public ActivityAccess(HttpServletRequest request, HttpServletResponse response) {
        super(request, response);
    }
 
    
    /**
     *
     * @param request
     * @param response
     * @param dao
     */
    public ActivityAccess(HttpServletRequest request, HttpServletResponse response, DAO dao) 
    {
        super(request, response);
        this.dao = (ActivityDAO) dao;
    }
    
    /**
     *
     * @param halaman
     * @param batasJmlItem
     */
    @Override
    public void getData(int halaman, int batasJmlItem)
    {
        List<Activity> listAllActivity;
        int jmlHal;
        
        listAllActivity = this.dao.listAllActivity(halaman,batasJmlItem);
        jmlHal = this.dao.getPageCount(batasJmlItem);
        
        super.getRequest().setAttribute("jmlhal", jmlHal);
        super.getRequest().setAttribute("ActivityData", listAllActivity);
        super.getRequest().setAttribute("content", "agenda");
        
        //super.getData();
    }
    
    /**
     *
     */
    @Override
    public void getRegPage()
    {
        super.getRequest().setAttribute("content", "addagenda");
        super.getRegPage();
    }
    
    /**
     *
     */
    @Override
    public void simpanData()
    {
        Activity myActivity;
        boolean isSaved;
        myActivity = new Activity();
        super.getRequest().setAttribute("content", "activity");
        super.simpanData();
    }
}
    

