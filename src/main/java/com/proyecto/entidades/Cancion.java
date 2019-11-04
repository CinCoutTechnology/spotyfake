package com.proyecto.entidades;

import java.time.LocalDate;

public class Cancion {
	private int idCancion;
	private String nombre;
	private String artista;
	private String album;
	private String genero;
	private float duracionCancion;
	private String imagen;

	public Cancion(int idCancion, String nombre, String artista, String album, String genero, float duracionCancion, String imagen) {
		super();
		this.idCancion = idCancion;
		this.nombre = nombre;
		this.artista = artista;
		this.album = album;
		this.genero = genero;
		this.duracionCancion = duracionCancion;
		this.imagen = imagen;
	}

	public int getIdCancion() {
		return idCancion;
	}

	public void setIdCancion(int idCancion) {
		this.idCancion = idCancion;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getArtista() {
		return artista;
	}

	public void setArtista(String artista) {
		this.artista = artista;
	}

	public String getAlbum() {
		return album;
	}

	public void setAlbum(String album) {
		this.album = album;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public float getDuracionCancion() {
		return duracionCancion;
	}

	public void setDuracionCancion(float duracionCancion) {
		this.duracionCancion = duracionCancion;
	}
	
	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
	
}
