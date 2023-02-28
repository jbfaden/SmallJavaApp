
package smallsimpleapp;

import javax.swing.ImageIcon;
import javax.swing.JOptionPane;

/**
 *
 * @author jbf
 */
public class Main {
    public static void main( String[] args ) {
        JOptionPane.showConfirmDialog( null, new SmallSimpleApp(), "Rabbit Timer",
                JOptionPane.DEFAULT_OPTION, JOptionPane.PLAIN_MESSAGE, new ImageIcon(Main.class.getResource("/icon.png")) );
    }
}
