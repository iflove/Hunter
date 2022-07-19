.class final Lcom/abq/qba/c/b$1;
.super Ljava/io/OutputStream;
.source "ByteStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/abq/qba/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 590
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 609
    const-string v0, "ByteStreams.nullOutputStream()"

    return-object v0
.end method

.method public final write(I)V
    .locals 0
    .param p1, "b"    # I

    .line 593
    return-void
.end method

.method public final write([B)V
    .locals 0
    .param p1, "b"    # [B

    .line 598
    invoke-static {p1}, Lcom/abq/qba/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    return-void
.end method

.method public final write([BII)V
    .locals 0
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 604
    invoke-static {p1}, Lcom/abq/qba/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    return-void
.end method
