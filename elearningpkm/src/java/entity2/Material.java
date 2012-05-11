/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity2;

import java.io.Serializable;
import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author meccanic
 */
@Entity
@Table(name = "material")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Material.findAll", query = "SELECT m FROM Material m"),
    @NamedQuery(name = "Material.findByMaterialId", query = "SELECT m FROM Material m WHERE m.materialId = :materialId"),
    @NamedQuery(name = "Material.findByMaterialName", query = "SELECT m FROM Material m WHERE m.materialName = :materialName")})
public class Material implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "MATERIAL_ID")
    private Integer materialId;
    @Basic(optional = false)
    @Column(name = "MATERIAL_NAME")
    private String materialName;
    @Lob
    @Column(name = "MATERIAL_FILE")
    private byte[] materialFile;
    @Lob
    @Column(name = "MATERIAL_NOTES")
    private String materialNotes;
    @JoinColumn(name = "TIME_LEARNING_ID", referencedColumnName = "TIME_LEARNING_ID")
    @ManyToOne(optional = false)
    private TimeLearning timeLearningId;

    public Material() {
    }

    public Material(Integer materialId) {
        this.materialId = materialId;
    }

    public Material(Integer materialId, String materialName) {
        this.materialId = materialId;
        this.materialName = materialName;
    }

    public Integer getMaterialId() {
        return materialId;
    }

    public void setMaterialId(Integer materialId) {
        this.materialId = materialId;
    }

    public String getMaterialName() {
        return materialName;
    }

    public void setMaterialName(String materialName) {
        this.materialName = materialName;
    }

    public byte[] getMaterialFile() {
        return materialFile;
    }

    public void setMaterialFile(byte[] materialFile) {
        this.materialFile = materialFile;
    }

    public String getMaterialNotes() {
        return materialNotes;
    }

    public void setMaterialNotes(String materialNotes) {
        this.materialNotes = materialNotes;
    }

    public TimeLearning getTimeLearningId() {
        return timeLearningId;
    }

    public void setTimeLearningId(TimeLearning timeLearningId) {
        this.timeLearningId = timeLearningId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (materialId != null ? materialId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Material)) {
            return false;
        }
        Material other = (Material) object;
        if ((this.materialId == null && other.materialId != null) || (this.materialId != null && !this.materialId.equals(other.materialId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Material[ materialId=" + materialId + " ]";
    }
    
}
