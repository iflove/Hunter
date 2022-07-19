.class Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess$BlurTask;
.super Ljava/lang/Object;
.source "JavaBlurProcess.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlurTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final _coreIndex:I

.field private final _h:I

.field private final _radius:I

.field private final _round:I

.field private final _src:[I

.field private final _totalCores:I

.field private final _w:I


# direct methods
.method public constructor <init>([IIIIIII)V
    .locals 0
    .param p1, "src"    # [I
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "radius"    # I
    .param p5, "totalCores"    # I
    .param p6, "coreIndex"    # I
    .param p7, "round"    # I

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess$BlurTask;->_src:[I

    .line 328
    iput p2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess$BlurTask;->_w:I

    .line 329
    iput p3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess$BlurTask;->_h:I

    .line 330
    iput p4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess$BlurTask;->_radius:I

    .line 331
    iput p5, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess$BlurTask;->_totalCores:I

    .line 332
    iput p6, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess$BlurTask;->_coreIndex:I

    .line 333
    iput p7, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess$BlurTask;->_round:I

    .line 334
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 316
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess$BlurTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 7

    .line 338
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess$BlurTask;->_src:[I

    iget v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess$BlurTask;->_w:I

    iget v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess$BlurTask;->_h:I

    iget v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess$BlurTask;->_radius:I

    iget v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess$BlurTask;->_totalCores:I

    iget v5, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess$BlurTask;->_coreIndex:I

    iget v6, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess$BlurTask;->_round:I

    # invokes: Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess;->blurIteration([IIIIIII)V
    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/JavaBlurProcess;->access$000([IIIIIII)V

    .line 339
    const/4 v0, 0x0

    return-object v0
.end method
