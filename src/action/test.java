package action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class test {
	public static void main(String[] args) throws Exception{
		//final String sql = "INSERT INTO my_news(title,content) VALUES('I Love You888','yes!yes!888');";
		//hello，这是我改的在github上,本地更改及版本号不对应
		//hello，这是我改的在github上，改了又改
		String sql = "SELECT * FROM my_news WHERE title='i love you'";
		String url = "jdbc:mysql://localhost:3306/solr?characterEncoding=utf8&"
	            + "user=root&password=root";
		Class.forName("com.mysql.jdbc.Driver");
		DriverManager.setLoginTimeout(2);
		final Connection connection = DriverManager.getConnection(url);
		
		final PreparedStatement statement = connection.prepareStatement(sql);
		long befor = System.currentTimeMillis();
		ResultSet resultSet = statement.executeQuery();
		resultSet.next();
		long after = System.currentTimeMillis();
		System.out.println(after - befor);
		/*for (int i = 0; i < 30; i++) {
			new Thread(new Runnable() {
				public void run() {
					for (long i = 0; i < 1999999999; i++) {
						try {
							statement.execute();
						} catch (SQLException e) {
							e.printStackTrace();
						}
						System.out.println(i);
					}
				}
			}).start();
		}*/
		
		/*
		for (int j = 0; j < 100; j++) {
			final int a = 1000000 * j;
			new Thread(new Runnable() {
				public void run() {
					try {
						Statement statement = connection.createStatement();
						String sql = null;
						for (long i = a; i < 200000000; i++) {
							sql = "INSERT INTO my_news(title,content) VALUES('I Love You"+i+"','yes!yes!"+i+"')";
							statement.execute(sql);
							System.out.println(i);
						}
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}).start();
			//System.out.println(j);
		}*/
		
		/*new Thread(new Runnable() {
			public void run() {
				try {
					Statement statement = connection.createStatement();
					String sql = null;
					for (long i = 200000000; i < 400000000; i++) {
						sql = "INSERT INTO my_news(title,content) VALUES('I Love You"+i+"','yes!yes!"+i+"')";
						statement.execute(sql);
						System.out.println(i);
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}).start();
		new Thread(new Runnable() {
			public void run() {
				try {
					Statement statement = connection.createStatement();
					String sql = null;
					for (long i = 400000000; i < 600000000; i++) {
						sql = "INSERT INTO my_news(title,content) VALUES('I Love You"+i+"','yes!yes!"+i+"')";
						statement.execute(sql);
						System.out.println(i);
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}).start();
		new Thread(new Runnable() {
			public void run() {
				try {
					Statement statement = connection.createStatement();
					String sql = null;
					for (long i = 600000000; i < 800000000; i++) {
						sql = "INSERT INTO my_news(title,content) VALUES('I Love You"+i+"','yes!yes!"+i+"')";
						statement.execute(sql);
						System.out.println(i);
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}).start();
		new Thread(new Runnable() {
			public void run() {
				try {
					Statement statement = connection.createStatement();
					String sql = null;
					for (long i = 800000000; i < 1000000000; i++) {
						sql = "INSERT INTO my_news(title,content) VALUES('I Love You"+i+"','yes!yes!"+i+"')";
						statement.execute(sql);
						System.out.println(i);
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}).start();*/
	}
}
