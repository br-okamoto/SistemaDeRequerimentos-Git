package br.mackenzie.requerimentos.model;

import java.util.Date;

public class Requerimento {

	private int protocolo;
	private int tipoRequerimento;
	private int codUsuario;
	private Date dataInicioRequerimento;
	private Date dataFimRequerimento;
	private String statusRequerimento;
	private String telContato;

	/*
	public Requerimento(int protocolo, int tipoRequerimento,
			int codUsuario, Date dataInicioRequerimento,
			Date dataFimRequerimento, String statusRequerimento) {
		this.protocolo = protocolo;
		this.tipoRequerimento = tipoRequerimento;
		this.codUsuario = codUsuario;
		this.dataInicioRequerimento = dataInicioRequerimento;
		this.dataFimRequerimento = dataFimRequerimento;
		this.statusRequerimento = statusRequerimento;
	}
	*/

	public int getProtocolo() {
		return protocolo;
	}

	public void setProtocolo(int protocolo) {
		this.protocolo = protocolo;
	}

	public int getTipoRequerimento() {
		return tipoRequerimento;
	}

	public void setTipoRequerimento(int tipoRequerimento) {
		this.tipoRequerimento = tipoRequerimento;
	}

	public int getCodUsuario() {
		return codUsuario;
	}

	public void setCodUsuario(int codUsuario) {
		this.codUsuario = codUsuario;
	}

	public Date getDataInicioRequerimento() {
		return dataInicioRequerimento;
	}

	public void setDataInicioRequerimento(Date dataInicioRequerimento) {
		this.dataInicioRequerimento = dataInicioRequerimento;
	}

	public Date getDataFimRequerimento() {
		return dataFimRequerimento;
	}

	public void setDataFimRequerimento(Date dataFimRequerimento) {
		this.dataFimRequerimento = dataFimRequerimento;
	}

	public String getStatusRequerimento() {
		return statusRequerimento;
	}

	public void setStatusRequerimento(String statusRequerimento) {
		this.statusRequerimento = statusRequerimento;
	}

	public String getTelContato() {
		return telContato;
	}

	public void setTelContato(String telContato) {
		this.telContato = telContato;
	}

}
