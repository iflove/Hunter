.class public Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/StackBlurManager;
.super Ljava/lang/Object;
.source "StackBlurManager.java"


# static fields
.field static final EXECUTOR_THREADS:I = 0x2


# instance fields
.field private final _blurProcess:Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurProcess;

.field private final _image:Landroid/graphics/Bitmap;

.field private _result:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/StackBlurManager;->_image:Landroid/graphics/Bitmap;

    .line 54
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/StackBlurManager;->_blurProcess:Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurProcess;

    .line 55
    return-void
.end method


# virtual methods
.method public process(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "radius"    # I

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/StackBlurManager;->_blurProcess:Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurProcess;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/StackBlurManager;->_image:Landroid/graphics/Bitmap;

    int-to-float v2, p1

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurProcess;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/StackBlurManager;->_result:Landroid/graphics/Bitmap;

    .line 64
    return-object v0
.end method
