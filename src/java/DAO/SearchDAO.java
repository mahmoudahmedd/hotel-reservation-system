/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Models.Facility;
import Models.Hotel;
import Models.Reservation;
import Models.Room;
import Models.Search;
import Models.User;
import Utils.MySqlConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author WIN
 */
public class SearchDAO extends MySqlDAO<Search> {

    @Override
    protected Search toTypeT(ResultSet _resultSet) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected void setPreparedStatement(PreparedStatement _preparedStatement, Search _t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public List<Hotel> getAllBy(String _checkInDate,
            String _checkOutDate,
            String _adults,
            String _children,
            String _governorate,
            String _hotelName) {
        List<Hotel> list = null;

        try {
            list = new ArrayList<Hotel>();

            String sql = "SELECT DISTINCT rooms.hotel_id, hotels.* FROM hotels INNER JOIN rooms ON rooms.hotel_id = hotels.id "
                    + "WHERE rooms.number_of_adults = ? "
                    + "AND rooms.number_of_children = ? " + "AND hotels.governorate = ? ";

            sql += " AND (rooms.is_available = '1' or rooms.id NOT IN (SELECT reservations.room_id FROM reservations "
                    + "WHERE ((reservations.check_in_date BETWEEN ? AND ? ) OR (reservations.check_out_date BETWEEN ? AND ? )) "
                    + "AND reservations.status = 'confirmed'))";

            if (!_hotelName.equals("")) {
                sql += " AND hotels.name = ? ";
            }

            this.connection = MySqlConnection.openConnection();
            this.preparedStatement = this.connection.prepareStatement(sql);
            this.preparedStatement.setString(1, _adults);
            this.preparedStatement.setString(2, _children);
            this.preparedStatement.setString(3, _governorate);

            this.preparedStatement.setString(4, _checkInDate);
            this.preparedStatement.setString(5, _checkOutDate);
            this.preparedStatement.setString(6, _checkInDate);
            this.preparedStatement.setString(7, _checkOutDate);

            if (!_hotelName.equals("")) {
                this.preparedStatement.setString(8, _hotelName);
            }

            this.resultSet = this.preparedStatement.executeQuery();
            System.out.println(sql);
            while (resultSet.next()) {

                Hotel hotel = new Hotel();

                hotel.setId(resultSet.getInt("id"));
                hotel.setUserId(resultSet.getInt("user_id"));
                hotel.setName(resultSet.getString("name"));
                hotel.setDescription(resultSet.getString("description"));
                hotel.setPhoneNumber(resultSet.getString("phone_number"));
                hotel.setImagePath(resultSet.getString("image_path"));
                hotel.setRates(resultSet.getDouble("rates"));
                hotel.setNumberOfRates(resultSet.getInt("number_of_rates"));
                hotel.setStars(resultSet.getInt("stars"));
                hotel.setAddress(resultSet.getString("address"));
                hotel.setGovernorate(resultSet.getString("governorate"));
                hotel.setCity(resultSet.getString("city"));
                hotel.setZipcode(resultSet.getString("zipcode"));
                hotel.setLongitude(resultSet.getDouble("longitude"));
                hotel.setLatitude(resultSet.getDouble("latitude"));
                hotel.setCreationDate(resultSet.getString("creation_date"));

                //search.setHotel(null);
                list.add(hotel);
                System.out.println(hotel);

            }
            //list.add(this.toTypeT(this.resultSet));
        } catch (SQLException _e) {
            _e.printStackTrace();
        }

        return list;
    }

    public List<Hotel> getAllBy2(String _checkInDate,
            String _checkOutDate,
            String _adults,
            String _children,
            String _governorate,
            String _hotelName,
            String _price,
            String _rating,
            String _stars,
            String _meals) {
        List<Hotel> list = null;

        try {
            list = new ArrayList<Hotel>();

            String sql = "SELECT DISTINCT rooms.hotel_id, hotels.* FROM hotels INNER JOIN rooms ON rooms.hotel_id = hotels.id "
                    + "WHERE rooms.number_of_adults = ? "
                    + "AND rooms.number_of_children = ? " + "AND hotels.governorate = ? ";

            sql += " AND (rooms.is_available = '1' or rooms.id NOT IN (SELECT reservations.room_id FROM reservations "
                    + "WHERE ((reservations.check_in_date BETWEEN ? AND ? ) OR (reservations.check_out_date BETWEEN ? AND ? )) "
                    + "AND reservations.status = 'confirmed'))";

            if (!_hotelName.equals("")) {
                sql += " AND hotels.name = ? ";
            }

            if (_price != null && !_price.equals("")) {
                sql += " AND rooms.price_per_day <= " + _price;
            }

            if (_rating != null && !_rating.equals("")) {
                sql += " AND hotels.rates >= " + _rating;
            }

            if (_stars != null && !_stars.equals("")) {
                sql += " AND hotels.stars >= " + _stars;
            }

            if (_meals != null && !_meals.equals("")) {
                if (_meals.equals("yes")) {
                    sql += " AND rooms.facilities LIKE '%meals%'";
                } else {
                    sql += " AND rooms.facilities not LIKE '%meals%'";
                }
            }

            this.connection = MySqlConnection.openConnection();
            this.preparedStatement = this.connection.prepareStatement(sql);
            this.preparedStatement.setString(1, _adults);
            this.preparedStatement.setString(2, _children);
            this.preparedStatement.setString(3, _governorate);

            this.preparedStatement.setString(4, _checkInDate);
            this.preparedStatement.setString(5, _checkOutDate);
            this.preparedStatement.setString(6, _checkInDate);
            this.preparedStatement.setString(7, _checkOutDate);

            if (!_hotelName.equals("")) {
                this.preparedStatement.setString(8, _hotelName);
            }

            this.resultSet = this.preparedStatement.executeQuery();
            System.out.println(sql);
            while (resultSet.next()) {

                Hotel hotel = new Hotel();

                hotel.setId(resultSet.getInt("id"));
                hotel.setUserId(resultSet.getInt("user_id"));
                hotel.setName(resultSet.getString("name"));
                hotel.setDescription(resultSet.getString("description"));
                hotel.setPhoneNumber(resultSet.getString("phone_number"));
                hotel.setImagePath(resultSet.getString("image_path"));
                hotel.setRates(resultSet.getDouble("rates"));
                hotel.setNumberOfRates(resultSet.getInt("number_of_rates"));
                hotel.setStars(resultSet.getInt("stars"));
                hotel.setAddress(resultSet.getString("address"));
                hotel.setGovernorate(resultSet.getString("governorate"));
                hotel.setCity(resultSet.getString("city"));
                hotel.setZipcode(resultSet.getString("zipcode"));
                hotel.setLongitude(resultSet.getDouble("longitude"));
                hotel.setLatitude(resultSet.getDouble("latitude"));
                hotel.setCreationDate(resultSet.getString("creation_date"));

                //search.setHotel(null);
                list.add(hotel);
                System.out.println(hotel);

            }
            //list.add(this.toTypeT(this.resultSet));
        } catch (SQLException _e) {
            _e.printStackTrace();
        }

        return list;
    }

    public List<Room> getRoomsBy(String _checkInDate,
            String _checkOutDate,
            String _adults,
            String _children,
            Integer _hotelId) {
        List<Room> list = null;

        try {
            list = new ArrayList<Room>();

            String sql = "SELECT * FROM rooms INNER JOIN hotels ON rooms.hotel_id = hotels.id "
                    + "WHERE rooms.number_of_adults = ? "
                    + "AND rooms.number_of_children = ? "
                    + "AND hotels.id = ? ";

            sql += " AND (rooms.is_available = '1' or rooms.id NOT IN (SELECT reservations.room_id FROM reservations "
                    + "WHERE ((reservations.check_in_date BETWEEN ? AND ? ) OR (reservations.check_out_date BETWEEN ? AND ? )) "
                    + "AND reservations.status = 'confirmed'))";

            this.connection = MySqlConnection.openConnection();
            this.preparedStatement = this.connection.prepareStatement(sql);
            this.preparedStatement.setString(1, _adults);
            this.preparedStatement.setString(2, _children);
            this.preparedStatement.setInt(3, _hotelId);
            this.preparedStatement.setString(4, _checkInDate);
            this.preparedStatement.setString(5, _checkOutDate);
            this.preparedStatement.setString(6, _checkInDate);
            this.preparedStatement.setString(7, _checkOutDate);

            this.resultSet = this.preparedStatement.executeQuery();
            System.out.println(sql);
            while (resultSet.next()) {

                Room room = new Room();

                room.setId(resultSet.getInt("id"));
                room.setHotelId(resultSet.getInt("hotel_id"));
                room.setNumber(resultSet.getInt("number"));
                room.setIsAvailable(resultSet.getBoolean("is_available"));
                room.setType(resultSet.getString("type"));
                room.setNumberOfAdults(resultSet.getInt("number_of_adults"));
                room.setNumberOfChildren(resultSet.getInt("number_of_children"));
                room.setPricePerDay(resultSet.getInt("price_per_day"));
                room.setFacilities(resultSet.getString("facilities"));
                room.setCreationDate(resultSet.getString("creation_date"));

                //search.setHotel(null);
                list.add(room);
                System.out.println(room);

            }
            //list.add(this.toTypeT(this.resultSet));
        } catch (SQLException _e) {
            _e.printStackTrace();
        }

        return list;
    }

    public List<Reservation> getAllReservations(String _checkInDate,
            String _checkOutDate,
            int user_id) {
        List<Reservation> list = null;

        try {
            list = new ArrayList<Reservation>();

            String sql = "SELECT * FROM reservations "
                    + "INNER JOIN rooms ON reservations.room_id = rooms.id "
                    + "INNER JOIN hotels ON rooms.hotel_id = hotels.id "
                    + "WHERE hotels.user_id = ? ";

            if (_checkInDate != null && !_checkInDate.equals("")) {
                sql += " AND reservations.check_in_date >=  '" + _checkInDate + "'";
            }

            if (_checkOutDate != null && !_checkOutDate.equals("")) {
                sql += " AND reservations.check_out_date <= '" + _checkOutDate + "'";
            }

            this.connection = MySqlConnection.openConnection();
            this.preparedStatement = this.connection.prepareStatement(sql);
            this.preparedStatement.setInt(1, user_id);

            this.resultSet = this.preparedStatement.executeQuery();
            System.out.println(sql);
            while (resultSet.next()) {

                Reservation reservation = new Reservation();

                reservation.setId(resultSet.getInt("id"));
                reservation.setUserId(resultSet.getInt("user_id"));
                reservation.setRoomId(resultSet.getInt("room_id"));
                reservation.setStatus(resultSet.getString("status"));
                reservation.setCheckInDate(resultSet.getString("check_in_date"));
                reservation.setCheckOutDate(resultSet.getString("check_out_date"));
                reservation.setCreationDate(resultSet.getString("creation_date"));

                //search.setHotel(null);
                list.add(reservation);

            }
            //list.add(this.toTypeT(this.resultSet));
        } catch (SQLException _e) {
            _e.printStackTrace();
        }

        return list;
    }

    public List<User> getAllUsers(String email,
            String phoneNumber) {
        List<User> list = null;

        try {
            list = new ArrayList<User>();

            String sql = "SELECT * FROM users WHERE ";
            
            if (email == null) {
                email = "";
            }
            
            if (phoneNumber == null) {
                phoneNumber = "";
            }
            
            sql += " email = '" + email + "' OR phone_number = '" + phoneNumber + "'";
            

            this.connection = MySqlConnection.openConnection();
            this.preparedStatement = this.connection.prepareStatement(sql);

            this.resultSet = this.preparedStatement.executeQuery();
            System.out.println(sql);
            while (resultSet.next()) {

                User user = new User();

                user.setId(resultSet.getInt("id"));
                user.setEmail(resultSet.getString("email"));
                user.setUsername(resultSet.getString("username"));
                user.setPhoneNumber(resultSet.getString("phone_number"));
                user.setPassword(resultSet.getString("password"));
                user.setFirstName(resultSet.getString("first_name"));
                user.setLastName(resultSet.getString("last_name"));
                user.setUserType(resultSet.getString("user_type"));
                user.setCreationDate(resultSet.getString("creation_date"));
                
                

                //search.setHotel(null);
                list.add(user);

            }
            //list.add(this.toTypeT(this.resultSet));
        } catch (SQLException _e) {
            _e.printStackTrace();
        }

        return list;
    }
}
