.class Lcom/alipay/mobile/h5container/api/H5TitleBar$5;
.super Ljava/lang/Object;
.source "H5TitleBar.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/h5container/api/H5TitleBar;->loadImageAsync(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/h5container/api/H5TitleBar;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5container/api/H5TitleBar;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/h5container/api/H5TitleBar;

    .line 1391
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar$5;->this$0:Lcom/alipay/mobile/h5container/api/H5TitleBar;

    iput p2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar$5;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1394
    if-eqz p1, :cond_0

    .line 1395
    const-string v0, "H5TitleBar"

    const-string v1, "loadImageAsync from online"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar$5;->this$0:Lcom/alipay/mobile/h5container/api/H5TitleBar;

    iget v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar$5;->val$index:I

    # invokes: Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionImage(Landroid/graphics/Bitmap;I)V
    invoke-static {v0, p1, v1}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->access$200(Lcom/alipay/mobile/h5container/api/H5TitleBar;Landroid/graphics/Bitmap;I)V

    .line 1398
    :cond_0
    return-void
.end method
