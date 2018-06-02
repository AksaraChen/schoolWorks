package project;

import java.io.FileInputStream;
import java.io.ObjectInputStream;//��J�ɮ�

import java.io.FileOutputStream;
import java.io.ObjectOutputStream;//��X�ɮ�

import java.util.Scanner;


public class Main {
	public static void main(String[] args){
		
		Scanner scanner = new Scanner(System.in);
		String name = new String(scanner.next());
		int score = scanner.nextInt();
		scanner.close();
		
		Leader[] leaderboard= new Leader[3];
		for(int i = 0; i < 3; i++){
			leaderboard[i]= new Leader(" ",0);
		}//��l��
		
		try {
			ObjectInputStream ois = new ObjectInputStream(new FileInputStream("d:\\record.obj"));
			for(int i = 0; i < 3; i++){
				try{
					leaderboard[i]= new Leader(ois.readUTF(), ois.readInt());
				}catch(Exception e){}
			}
			ois.close();//Ū��
			System.out.println("����Ū��");
						
			for(int i = 0; i < 3; i++){
				if(score > leaderboard[i].getScore()){
					for( int j = 2 ; j > i ; j-- ){
							leaderboard[j] = new Leader(leaderboard[j-1].getName(), leaderboard[j-1].getScore());
					}
					leaderboard[i]=new Leader(name,score);
					break;
				}
			}//���
			
		} catch (Exception e) {
			System.out.println("�i�Jcatch");
			leaderboard[0] = new Leader(name, score);
		}//�S���O���ɮ�
		
		for(int i = 0; i < 3; i++){
			try{
				System.out.println(leaderboard[i].getName()+" "+leaderboard[i].getScore());
			}catch(Exception e){}
		}//�L�X���G(�n�אּGUI
			
		
		
		
		
		
		
		
		try {
			ObjectOutputStream oos = new ObjectOutputStream(new	FileOutputStream("d:\\record.obj"));
			for(int i = 0; i < 3; i++){
				try{
					oos.writeUTF(leaderboard[i].getName());
					oos.writeInt(leaderboard[i].getScore());
				}catch(Exception e){}
			}
			oos.flush();
			oos.close();
		} catch (Exception e) {
				e.printStackTrace();
		}//��X�O����
		
	}
	
}
