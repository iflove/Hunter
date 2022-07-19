.class public Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileOutputStream;
.super Ljava/io/FileOutputStream;
.source "ZFileOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .line 12
    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "append"    # Z

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 21
    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 31
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 51
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    .line 52
    return-void
.end method

.method public write(I)V
    .locals 0
    .param p1, "oneByte"    # I

    .line 46
    invoke-super {p0, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 47
    return-void
.end method

.method public write([B)V
    .locals 0
    .param p1, "buffer"    # [B

    .line 35
    invoke-super {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 36
    return-void
.end method

.method public write([BII)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I

    .line 41
    invoke-super {p0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 42
    return-void
.end method
