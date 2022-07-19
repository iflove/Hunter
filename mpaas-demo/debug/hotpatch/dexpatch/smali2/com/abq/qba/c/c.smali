.class public final Lcom/abq/qba/c/c;
.super Ljava/io/FilterOutputStream;
.source "LittleEndianDataOutputStream.java"

# interfaces
.implements Ljava/io/DataOutput;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 45
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-static {p1}, Lcom/abq/qba/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 46
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/abq/qba/c/c;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 169
    return-void
.end method

.method public final write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 51
    iget-object v0, p0, Lcom/abq/qba/c/c;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 52
    return-void
.end method

.method public final writeBoolean(Z)V
    .locals 1
    .param p1, "v"    # Z

    .line 56
    iget-object v0, p0, Lcom/abq/qba/c/c;->out:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 57
    return-void
.end method

.method public final writeByte(I)V
    .locals 1
    .param p1, "v"    # I

    .line 61
    iget-object v0, p0, Lcom/abq/qba/c/c;->out:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 62
    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/abq/qba/c/c;->out:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public final writeChar(I)V
    .locals 0
    .param p1, "v"    # I

    .line 82
    invoke-virtual {p0, p1}, Lcom/abq/qba/c/c;->writeShort(I)V

    .line 83
    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/abq/qba/c/c;->writeChar(I)V

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public final writeDouble(D)V
    .locals 2
    .param p1, "v"    # D

    .line 106
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/abq/qba/c/c;->writeLong(J)V

    .line 107
    return-void
.end method

.method public final writeFloat(F)V
    .locals 1
    .param p1, "v"    # F

    .line 117
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/abq/qba/c/c;->writeInt(I)V

    .line 118
    return-void
.end method

.method public final writeInt(I)V
    .locals 2
    .param p1, "v"    # I

    .line 128
    iget-object v0, p0, Lcom/abq/qba/c/c;->out:Ljava/io/OutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 129
    iget-object v0, p0, Lcom/abq/qba/c/c;->out:Ljava/io/OutputStream;

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 130
    iget-object v0, p0, Lcom/abq/qba/c/c;->out:Ljava/io/OutputStream;

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 131
    iget-object v0, p0, Lcom/abq/qba/c/c;->out:Ljava/io/OutputStream;

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 132
    return-void
.end method

.method public final writeLong(J)V
    .locals 3
    .param p1, "v"    # J

    .line 142
    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/abq/qba/d/a;->a(J)[B

    move-result-object v0

    .line 143
    .local v0, "bytes":[B
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/abq/qba/c/c;->write([BII)V

    .line 144
    return-void
.end method

.method public final writeShort(I)V
    .locals 2
    .param p1, "v"    # I

    .line 154
    iget-object v0, p0, Lcom/abq/qba/c/c;->out:Ljava/io/OutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 155
    iget-object v0, p0, Lcom/abq/qba/c/c;->out:Ljava/io/OutputStream;

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 156
    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/abq/qba/c/c;->out:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 161
    return-void
.end method
