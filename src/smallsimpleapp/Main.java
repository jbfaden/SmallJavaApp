
package smallsimpleapp;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ImageIcon;
import javax.swing.JOptionPane;
import javax.swing.UnsupportedLookAndFeelException;

/**
 *
 * @author jbf
 */
public class Main {
    public static void main( String[] args ) {
        String s= javax.swing.UIManager.getSystemLookAndFeelClassName();
        try {
            javax.swing.UIManager.setLookAndFeel(s);
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | UnsupportedLookAndFeelException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        }
        JOptionPane.showConfirmDialog( null, new SmallSimpleApp(), "Rabbit Timer",
                JOptionPane.DEFAULT_OPTION, JOptionPane.PLAIN_MESSAGE, new ImageIcon(Main.class.getResource("/icon.png")) );
    }
}
