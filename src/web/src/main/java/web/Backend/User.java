package web.Backend;

/**
 * @author Daniel Filakovsky
 */
public class User {

    private String name;
    private String hash;
    private String house;
    private String nickname;

    public User(String name, String pass, String nickname, String house) {
        this.name = name;
        hash = MD5.convert(pass);
        this.house = house;
        this.nickname = nickname;
    }

    public String getNickname() {
        return nickname;
    }

    public String getName() {
        return name;
    }

    public String getHouse() {
        return house;
    }

    @Override
    public String toString() {
        return "User{" +
                "name='" + name + '\'' +
                ", hash='" + hash + '\'' +
                ", house='" + house + '\'' +
                '}';
    }
}
