.class final Lcom/alipay/mobile/quinox/bundle/j$1;
.super Ljava/lang/Object;
.source "NativeLibs.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/bundle/j;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/alipay/mobile/quinox/bundle/j;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/bundle/j;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/bundle/j;

    .line 158
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/j$1;->b:Lcom/alipay/mobile/quinox/bundle/j;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/bundle/j$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInputStream(Ljava/io/InputStream;)Z
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;

    .line 162
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    .line 164
    .local v1, "bufferedInputStream":Ljava/io/BufferedInputStream;
    move-object v1, v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 165
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v0

    .line 168
    .local v0, "format":I
    const/4 v2, -0x2

    if-ne v2, v0, :cond_0

    .line 169
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readStringArray2(Ljava/io/BufferedInputStream;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "libs":[Ljava/lang/String;
    goto :goto_0

    .line 171
    .end local v2    # "libs":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->reset()V

    .line 172
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readStringArray(Ljava/io/BufferedInputStream;)[Ljava/lang/String;

    move-result-object v2

    .line 175
    .restart local v2    # "libs":[Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/j$1;->a:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 176
    const/4 v3, 0x1

    return v3
.end method
