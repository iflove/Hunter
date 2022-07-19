.class Lcom/alipay/mobile/h5container/api/H5TitleBar$3;
.super Ljava/lang/Object;
.source "H5TitleBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionImage(Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/h5container/api/H5TitleBar;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5container/api/H5TitleBar;ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/h5container/api/H5TitleBar;

    .line 1352
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar$3;->this$0:Lcom/alipay/mobile/h5container/api/H5TitleBar;

    iput p2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar$3;->val$index:I

    iput-object p3, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar$3;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1356
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar$3;->this$0:Lcom/alipay/mobile/h5container/api/H5TitleBar;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->ICON:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    iget v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar$3;->val$index:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;IZ)V

    .line 1357
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar$3;->this$0:Lcom/alipay/mobile/h5container/api/H5TitleBar;

    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar$3;->val$bitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar$3;->val$index:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->setBtIcon(Landroid/graphics/Bitmap;I)V

    .line 1358
    return-void
.end method
