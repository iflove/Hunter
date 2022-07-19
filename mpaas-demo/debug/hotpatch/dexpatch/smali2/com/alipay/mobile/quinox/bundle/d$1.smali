.class final Lcom/alipay/mobile/quinox/bundle/d$1;
.super Ljava/lang/Object;
.source "BundleResMerge.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/bundle/d;->a(Landroid/util/SparseArray;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[Z

.field final synthetic b:Landroid/util/SparseArray;


# direct methods
.method constructor <init>([ZLandroid/util/SparseArray;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/d$1;->a:[Z

    iput-object p2, p0, Lcom/alipay/mobile/quinox/bundle/d$1;->b:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInputStream(Ljava/io/InputStream;)Z
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/d$1;->a:[Z

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/d$1;->b:Landroid/util/SparseArray;

    invoke-static {p1, v1}, Lcom/alipay/mobile/quinox/bundle/d;->a(Ljava/io/InputStream;Landroid/util/SparseArray;)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    .line 156
    const/4 v0, 0x1

    return v0
.end method
