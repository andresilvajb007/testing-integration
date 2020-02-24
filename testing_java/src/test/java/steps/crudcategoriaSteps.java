package steps;
import cucumber.api.PendingException;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.E;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;
import definition.CrudCategoria;
import definition.CrudProcessos;
import definition.User;
import org.junit.Assert;
import support.RESTSupport;

public class crudcategoriaSteps {



    @Dado("^usuario esta na pagina de categoria$")
    public void usuarioEstaNaPaginaDeCategoria() {
        CrudCategoria.clearFields();
    }

    @E("^o usuario informa no campo \"([^\"]*)\" o valor \"([^\"]*)\"$")
    public void oUsuarioInformaNoCampoOValor(String campo, String valor) throws Throwable {
        CrudCategoria.addFields(campo,valor);
    }

    @Quando("^o  usuario clicar em salvar$")
    public void oUsuarioClicarEmSalvar() {
        RESTSupport.executePost(CrudCategoria.getEndPoint(),CrudCategoria.getFields());
         CrudCategoria.setLastID(RESTSupport.key("id").toString());
//        CrudCategoria.clearFields();

    }

    @E("^o usuario gostaria de visualizar a categria com o id (\\d+)$")
    public void oUsuarioGostariaDeVisualizarACategriaComOId(String id) {
        CrudCategoria.setLastID(id);
    }

    @Quando("^o  usuario clicar em visualizar$")
    public void oUsuarioClicarEmVisualizar() {
        RESTSupport.executeGet(CrudCategoria.getEndPoint() + "/" + CrudCategoria.getLastID());
    }

    @Quando("^o usuário clicar em atualizar a categoria$")
    public void oUsuarioClicarEmAtualizarACategoria() {
        RESTSupport.executePut(CrudCategoria.getEndPoint() + "/" +
                CrudCategoria.getLastID() , CrudCategoria.getFields());
    }

    @Quando("^o usuário clicar em deletar a categoria$")
    public void oUsuarioClicarEmDeletarACategoria() {
        RESTSupport.executeDelete(CrudCategoria.getEndPoint() + "/" + CrudCategoria.getLastID());
    }
}
