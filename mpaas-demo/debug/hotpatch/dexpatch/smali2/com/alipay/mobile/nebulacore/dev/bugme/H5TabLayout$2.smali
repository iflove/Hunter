.class Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$2;
.super Landroid/view/animation/Animation;
.source "H5TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .line 388
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$2;->c:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    iput p2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$2;->a:I

    iput p3, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$2;->b:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 391
    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$2;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$2;->b:I

    int-to-float v1, v1

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->a(FFF)F

    move-result v0

    .line 392
    .local v0, "value":F
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$2;->c:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    float-to-int v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->scrollTo(II)V

    .line 393
    return-void
.end method
