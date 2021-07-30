package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class SingleConnectionBanco {

	private static String banco = "jdbc:postgresql://localhost:5432/db-jsp?autoReconnect=true";
	private static String user = "postgres";
	private static String senha = "postgres";
	private static Connection connection = null;

	public static Connection getConnection() {
		return connection;
	}

	static {
		conectar();
	}

	public SingleConnectionBanco() { /* Quando tiver uma instância, vai conectar */
		conectar();
	}

	private static void conectar() {
		if (connection == null) {
			try {
				Class.forName("org.postgresql.Driver"); /* Carregar o Driver de conexão */
				connection = DriverManager.getConnection(banco, user, senha);
				connection.setAutoCommit(false);/* para não efetuar commint sem nosso comando */
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
