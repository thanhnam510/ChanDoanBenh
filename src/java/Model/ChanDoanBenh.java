package Model;


import java.util.logging.Level;
import java.util.logging.Logger;
import weka.classifiers.trees.J48;
import weka.core.Instances;
import wekapro.MyDecisionTreeModel;
import wekapro.Program;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Nam
 */
public class ChanDoanBenh {
    private static MyDecisionTreeModel model; 
    private static MyDecisionTreeModel ganModel; 
    private static MyDecisionTreeModel tieuhoaModel;
    private static MyDecisionTreeModel hohapModel;
    private static String dataPath="C:\\Users\\Nam\\Documents\\NetBeansProjects\\ChanDoanBenh-master\\data";
    public ChanDoanBenh() {
    }
    
    public static void init(){
         if(model==null)
            try {
                model = new MyDecisionTreeModel();
                ganModel = new MyDecisionTreeModel();
                tieuhoaModel = new MyDecisionTreeModel();
                model.setTree((J48) model.loadModel(dataPath + "\\tree"));
                ganModel.setTree((J48) model.loadModel(dataPath +"\\tree_Gan"));
                tieuhoaModel.setTree((J48) model.loadModel(dataPath +"\\tree_TieuHoa"));
        } catch (Exception ex) {
                System.out.println(ex);
            try {
                firstBuild();
            } catch (Exception exl) {
                System.out.println(exl);
            }
        }
    }
    
    public static String chanDoanSoBo(String da,String mat, String bung,String cannang,String camgiac,
            String ho,String daudau,String khotho) throws Exception{
        init();
        String ketqua;
        String sobo ="";
        try{
        sobo = model.predict(createRaw(da, mat, bung, cannang, camgiac, ho, daudau, khotho));
        }
        catch (Exception ex){
            System.out.println(ex.toString());
            return null;
        }
        return sobo;
       
    }
    public static String chanDoan(String da,String mat, String bung,String camgiac,
            String anuong,String sot) throws Exception{
                init();
                String ketqua ="";
        try{
        ketqua = model.predict(createRaw(da, mat, bung, camgiac, anuong, sot));
        }
        catch (Exception ex){
            System.out.println(ex.toString());
            return null;
        }
        return ketqua;
            }
    
    // tạo dữ liệu tổng quát
     private static Instances createRaw(String da,String mat, String bung,String cannang,String camgiac,
        String ho,String daudau,String khotho) {
        Program program = new Program();
        String Benh = "BT";
        return program.createInstance(da, mat, bung, cannang, camgiac,ho,daudau,khotho,Benh);
    }
    // tạo dữ liệu gan
    private static Instances createRaw(String Da, String Mat, String Bung, String CamGiac,String AnUong,String Sot) {
        Program program = new Program();
        String Benh = "BT";
        return program.createInstance(Da, Mat, Bung, CamGiac, AnUong, Sot, Benh);
    }
    // tạo dữ liệu ... hô hấp || tiêu hóa
    private static Instances createRaw(String Bung, String CamGiac) {
        Program program = new Program();
        String Benh = "BT";
        return program.createInstance(Bung, CamGiac, Benh);
    }
    // tạo dữ liệu còn lại
    
    private static void firstBuild() throws Exception {
        model = new MyDecisionTreeModel(dataPath +"\\TongQuat.arff", "-C 0.25 -M 2");
        model.buildDecisionTree();
        System.out.println("Thông số cây:\n---------------------------------------------");
        System.out.println(model);
        model.saveModel(dataPath +"\\tree", model.getTree());
        model.setTree((J48) model.loadModel(dataPath +"\\tree"));
        System.out.println(model.getTree());
        System.out.println("Dự đoán:");
        System.out.println("---------------------------------------------");
        
        ganModel = new MyDecisionTreeModel(dataPath +"\\Gan.arff", "-C 0.25 -M 2");
        ganModel.buildDecisionTree();
        System.out.println("Thông số cây về bênh gan:\n---------------------------------------------");
        System.out.println(ganModel);
        ganModel.saveModel(dataPath +"\\tree_Gan", ganModel.getTree());
        ganModel.setTree((J48) ganModel.loadModel(dataPath +"\\tree_Gan"));
        System.out.println(ganModel.getTree());
        System.out.println("Dự đoán:");
        System.out.println("---------------------------------------------");
        
        tieuhoaModel = new MyDecisionTreeModel(dataPath +"\\TieuHoa.arff", "-C 0.25 -M 2");
        tieuhoaModel.buildDecisionTree();
        System.out.println("Thông số cây về bênh tiêu hóa:\n---------------------------------------------");
        System.out.println(tieuhoaModel);
        tieuhoaModel.saveModel(dataPath +"\\tree_TieuHoa", tieuhoaModel.getTree());
        tieuhoaModel.setTree((J48) tieuhoaModel.loadModel(dataPath +"\\tree_TieuHoa"));
        System.out.println(tieuhoaModel.getTree());
        System.out.println("Dự đoán:");
        System.out.println("---------------------------------------------");
    }
    public static void main(String[] args) throws Exception {
        String benh = ChanDoanBenh.chanDoanSoBo("NoiMun","Vang","KhoTieu","Cao","BT","BT","BT","BT");
        System.out.println(benh);
    }
}
