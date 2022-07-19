.class public Lcom/alipay/mobile/nebulax/engine/cube/f/c;
.super Lcom/alipay/mobile/nebulax/engine/common/c/a;
.source "NXCubeView.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/adapter/NXH5PageAdapter;
.implements Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InternalProcessor;


# static fields
.field private static e:Ljava/lang/String;


# instance fields
.field private f:Lcom/antfin/cube/cubecore/api/CKView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/ViewGroup;

.field private i:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

.field private j:Ljava/lang/String;

.field private k:Lcom/alipay/mobile/h5container/api/H5Page;

.field private l:Lcom/alipay/mobile/nebulax/engine/cube/c/a;

.field private m:Lcom/alipay/mobile/nebulax/engine/cube/f/a;

.field private n:Lcom/alipay/mobile/nebulax/engine/cube/f/b;

.field private o:Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-string v0, "NebulaXEngine.NXCubeView"

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulax/engine/cube/a;Landroid/app/Activity;Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/antfin/cube/cubecore/api/CKApp;Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;II)V
    .locals 6

    .line 81
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/alipay/mobile/nebulax/engine/common/c/a;-><init>(Lcom/alipay/mobile/nebulax/engine/common/a;Landroid/app/Activity;Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;)V

    .line 82
    instance-of p1, p3, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz p1, :cond_0

    .line 85
    move-object v4, p3

    check-cast v4, Lcom/alipay/mobile/h5container/api/H5Page;

    iput-object v4, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->k:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 86
    new-instance p1, Lcom/alipay/mobile/nebulax/engine/cube/c/a;

    iget-object p5, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->k:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-direct {p1, p0, p5}, Lcom/alipay/mobile/nebulax/engine/cube/c/a;-><init>(Lcom/alipay/mobile/nebulax/engine/api/NXView;Lcom/alipay/mobile/h5container/api/H5Page;)V

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->l:Lcom/alipay/mobile/nebulax/engine/cube/c/a;

    .line 87
    new-instance p1, Lcom/alipay/mobile/nebulax/engine/cube/b/c;

    iget-object v5, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->l:Lcom/alipay/mobile/nebulax/engine/cube/c/a;

    move-object v0, p1

    move-object v1, p3

    move-object v2, p0

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulax/engine/cube/b/c;-><init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/engine/cube/f/c;Lcom/antfin/cube/cubecore/api/CKApp;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebulax/engine/cube/c/a;)V

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->i:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    .line 88
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->l:Lcom/alipay/mobile/nebulax/engine/cube/c/a;

    invoke-virtual {p3, p1}, Lcom/alipay/mobile/nebulax/engine/cube/c/a;->a(Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;)V

    .line 89
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->l:Lcom/alipay/mobile/nebulax/engine/cube/c/a;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/nebulax/engine/cube/c/a;->a(Landroid/content/Context;)V

    .line 90
    new-instance p1, Lcom/alipay/mobile/nebulax/engine/cube/f/a;

    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->i:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    invoke-direct {p1, p3, p0}, Lcom/alipay/mobile/nebulax/engine/cube/f/a;-><init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;Lcom/alipay/mobile/nebulax/engine/api/NXView;)V

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->m:Lcom/alipay/mobile/nebulax/engine/cube/f/a;

    .line 91
    new-instance p1, Lcom/alipay/mobile/nebulax/engine/cube/f/b;

    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->i:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    invoke-direct {p1, p3}, Lcom/alipay/mobile/nebulax/engine/cube/f/b;-><init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;)V

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->n:Lcom/alipay/mobile/nebulax/engine/cube/f/b;

    .line 92
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->h:Landroid/view/ViewGroup;

    .line 93
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p1, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 95
    sget-object p3, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->e:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NXCubeView createPage width: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->j:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p4

    move-object v1, p2

    move v3, p6

    move v4, p7

    invoke-interface/range {v0 .. v5}, Lcom/antfin/cube/cubecore/api/CKApp;->createPage(Landroid/app/Activity;Ljava/lang/String;IILandroid/os/Bundle;)Lcom/antfin/cube/cubecore/api/CKView;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->f:Lcom/antfin/cube/cubecore/api/CKView;

    .line 97
    invoke-virtual {p2}, Lcom/antfin/cube/cubecore/api/CKView;->onCreate()V

    .line 98
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->h:Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->f:Lcom/antfin/cube/cubecore/api/CKView;

    invoke-virtual {p2, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->e:Ljava/lang/String;

    const-string p2, "nx cube view constructed "

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "node shoud must H5Page"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->o:Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 186
    nop

    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulax/engine/cube/f/c$2;-><init>(Lcom/alipay/mobile/nebulax/engine/cube/f/c;Ljava/lang/String;)V

    const-string p1, "URGENT_DISPLAY"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/ExecutorUtils;->execute(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 228
    :cond_0
    const-string p1, "CubeSpa, taskId is null"

    invoke-static {p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->w(Ljava/lang/String;)V

    .line 229
    const-class p1, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    invoke-static {p1}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->c:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_spa_load_appjs:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 230
    new-instance p1, Lcom/alipay/mobile/nebulax/engine/cube/f/c$3;

    invoke-direct {p1, p0}, Lcom/alipay/mobile/nebulax/engine/cube/f/c$3;-><init>(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)V

    invoke-static {p1}, Lcom/alipay/mobile/nebulax/common/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 239
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)Lcom/antfin/cube/cubecore/api/CKView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->f:Lcom/antfin/cube/cubecore/api/CKView;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->c:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object p0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->c:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object p0
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->c:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object p0
.end method

.method static synthetic f(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->c:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object p0
.end method

.method static synthetic g(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->c:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object p0
.end method

.method static synthetic h(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->c:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object p0
.end method

.method static synthetic j(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->c:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .line 278
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->e:Ljava/lang/String;

    const-string v1, "destroy nx view "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->a:Lcom/alipay/mobile/nebulax/engine/common/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->a:Lcom/alipay/mobile/nebulax/engine/common/a;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulax/engine/common/a;->b(Lcom/alipay/mobile/nebulax/engine/api/NXView;)V

    .line 281
    iput-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->a:Lcom/alipay/mobile/nebulax/engine/common/a;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->f:Lcom/antfin/cube/cubecore/api/CKView;

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {v0}, Lcom/antfin/cube/cubecore/api/CKView;->onDestroy()V

    .line 286
    iput-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->f:Lcom/antfin/cube/cubecore/api/CKView;

    .line 289
    :cond_1
    iput-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->k:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 290
    return-void
.end method

.method public forceLoad(Ljava/lang/String;)V
    .locals 1

    .line 182
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->e:Ljava/lang/String;

    const-string v0, "cube not support force load! "

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public getCapture(I)Landroid/graphics/Bitmap;
    .locals 3

    .line 412
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->f:Lcom/antfin/cube/cubecore/api/CKView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 413
    return-object v1

    .line 415
    :cond_0
    invoke-virtual {v0}, Lcom/antfin/cube/cubecore/api/CKView;->getVisibility()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 416
    nop

    .line 417
    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 419
    :cond_1
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->e:Ljava/lang/String;

    const-string v0, "getCapture CAPTURE_RANGE_DOCUMENT"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :try_start_0
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->f:Lcom/antfin/cube/cubecore/api/CKView;

    const-string v0, "capture_type_document"

    invoke-static {p1, v0, v1}, Lcom/antfin/cube/cubecore/api/CKTools;->capture(Lcom/antfin/cube/cubecore/api/CKView;Ljava/lang/String;Landroid/os/Bundle;)Lcom/antfin/cube/cubecore/api/CKTools$CapturePicture;

    move-result-object p1

    .line 422
    invoke-virtual {p1}, Lcom/antfin/cube/cubecore/api/CKTools$CapturePicture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 423
    :catchall_0
    move-exception p1

    .line 424
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->e:Ljava/lang/String;

    const-string v2, "getCapture CAPTURE_RANGE_DOCUMENT exception!"

    invoke-static {v0, v2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 428
    :goto_0
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->e:Ljava/lang/String;

    const-string v0, "getCapture CAPTURE_RANGE_VIEWPORT"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :try_start_1
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->f:Lcom/antfin/cube/cubecore/api/CKView;

    const-string v0, "capture_type_viewport"

    invoke-static {p1, v0, v1}, Lcom/antfin/cube/cubecore/api/CKTools;->capture(Lcom/antfin/cube/cubecore/api/CKView;Ljava/lang/String;Landroid/os/Bundle;)Lcom/antfin/cube/cubecore/api/CKTools$CapturePicture;

    move-result-object p1

    .line 431
    invoke-virtual {p1}, Lcom/antfin/cube/cubecore/api/CKTools$CapturePicture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    .line 432
    :catchall_1
    move-exception p1

    .line 433
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->e:Ljava/lang/String;

    const-string v2, "getCapture CAPTURE_RANGE_VIEWPORT exception!"

    invoke-static {v0, v2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 436
    return-object v1

    .line 439
    :cond_2
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->h:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 440
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->h:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 441
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 442
    return-object p1
.end method

.method public getH5WebViewAdapter()Ljava/lang/Object;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->l:Lcom/alipay/mobile/nebulax/engine/cube/c/a;

    return-object v0
.end method

.method public getInternalProcessor()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InternalProcessor;
    .locals 0

    .line 344
    return-object p0
.end method

.method public getLegacyH5WebView()Ljava/lang/Object;
    .locals 1

    .line 339
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNebulaXBridge()Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->i:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    return-object v0
.end method

.method public getPageId()I
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->k:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageId()I

    move-result v0

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->f:Lcom/antfin/cube/cubecore/api/CKView;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Lcom/antfin/cube/cubecore/api/CKView;->getScrollDistance()I

    move-result v0

    return v0

    .line 329
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->h:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getViewId()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->f:Lcom/antfin/cube/cubecore/api/CKView;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Lcom/antfin/cube/cubecore/api/CKView;->getPageInstanceId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 268
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public goBack(Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->m:Lcom/alipay/mobile/nebulax/engine/cube/f/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulax/engine/cube/f/a;->a(Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;)V

    .line 124
    return-void
.end method

.method public init()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->l:Lcom/alipay/mobile/nebulax/engine/cube/c/a;

    new-instance v1, Lcom/alipay/mobile/nebulax/engine/cube/c/b;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulax/engine/cube/c/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/engine/cube/c/a;->a(Lcom/alipay/mobile/nebulax/engine/cube/c/b;)V

    .line 361
    return-void
.end method

.method public insertJS(Ljava/lang/String;)V
    .locals 0

    .line 385
    return-void
.end method

.method public internalDestroy()V
    .locals 2

    .line 399
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->e:Ljava/lang/String;

    const-string v1, "internalDestroy nx view "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->f:Lcom/antfin/cube/cubecore/api/CKView;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Lcom/antfin/cube/cubecore/api/CKView;->onDestroy()V

    .line 403
    :cond_0
    return-void
.end method

.method public isH5View()Z
    .locals 1

    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public isShouldResumeWebView()Z
    .locals 1

    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public load(Lcom/alipay/mobile/nebulax/engine/api/model/LoadParams;)V
    .locals 3

    .line 138
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nx cube view load url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/alipay/mobile/nebulax/engine/api/model/LoadParams;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p1, Lcom/alipay/mobile/nebulax/engine/api/model/LoadParams;->url:Ljava/lang/String;

    .line 142
    :try_start_0
    iget-object p1, p1, Lcom/alipay/mobile/nebulax/engine/api/model/LoadParams;->url:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_0

    .line 143
    :catch_0
    move-exception p1

    .line 144
    const-string v1, "url prase Exception"

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->j:Ljava/lang/String;

    .line 149
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 151
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->f:Lcom/antfin/cube/cubecore/api/CKView;

    instance-of v2, v1, Lcom/antfin/cube/cubecore/api/CKSingleView;

    if-eqz v2, :cond_1

    .line 152
    invoke-virtual {v1}, Lcom/antfin/cube/cubecore/api/CKView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 153
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->a(Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->k:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->d:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    iget-object p1, p1, Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;->startParams:Landroid/os/Bundle;

    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->k:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->onPageStarted(Ljava/lang/String;)V

    .line 158
    :cond_0
    goto :goto_1

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->k:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->k:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->onPageStarted(Ljava/lang/String;)V

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->f:Lcom/antfin/cube/cubecore/api/CKView;

    invoke-virtual {v1, v0, p1}, Lcom/antfin/cube/cubecore/api/CKView;->bind(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 163
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->f:Lcom/antfin/cube/cubecore/api/CKView;

    invoke-virtual {p1}, Lcom/antfin/cube/cubecore/api/CKView;->load()V

    .line 166
    :goto_1
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->o:Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;

    if-eqz p1, :cond_3

    .line 167
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->f:Lcom/antfin/cube/cubecore/api/CKView;

    new-instance v0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulax/engine/cube/f/c$1;-><init>(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)V

    invoke-virtual {p1, v0}, Lcom/antfin/cube/cubecore/api/CKView;->setScrollListener(Lcom/antfin/cube/cubecore/api/CKView$CKScrollListener;)V

    .line 175
    :cond_3
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ckview create result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->f:Lcom/antfin/cube/cubecore/api/CKView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->m:Lcom/alipay/mobile/nebulax/engine/cube/f/a;

    sget v0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->d:I

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulax/engine/cube/f/a;->a(I)V

    .line 178
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 114
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->f:Lcom/antfin/cube/cubecore/api/CKView;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Lcom/antfin/cube/cubecore/api/CKView;->onPause()V

    .line 304
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->f:Lcom/antfin/cube/cubecore/api/CKView;

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Lcom/antfin/cube/cubecore/api/CKView;->onResume()V

    .line 297
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 2

    .line 389
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->e:Ljava/lang/String;

    const-string v1, "cube not support reload"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public runExit(Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->n:Lcom/alipay/mobile/nebulax/engine/cube/f/b;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulax/engine/cube/f/b;->b(Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;)V

    .line 129
    return-void
.end method

.method public scriptbizLoadedAndBridgeLoaded()Z
    .locals 1

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getDispatcher()Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->k:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 109
    return-void
.end method

.method public setBackBehavior(Ljava/lang/String;)V
    .locals 0

    .line 375
    return-void
.end method

.method public setScrollChangedCallback(Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;)V
    .locals 2

    .line 313
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->o:Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;

    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->f:Lcom/antfin/cube/cubecore/api/CKView;

    if-eqz v0, :cond_0

    .line 315
    new-instance v1, Lcom/alipay/mobile/nebulax/engine/cube/f/c$4;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulax/engine/cube/f/c$4;-><init>(Lcom/alipay/mobile/nebulax/engine/cube/f/c;Lcom/alipay/mobile/nebulax/engine/api/model/ScrollChangedCallback;)V

    invoke-virtual {v0, v1}, Lcom/antfin/cube/cubecore/api/CKView;->setScrollListener(Lcom/antfin/cube/cubecore/api/CKView$CKScrollListener;)V

    .line 322
    :cond_0
    return-void
.end method

.method public setShouldResumeWebView(Z)V
    .locals 0

    .line 355
    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 395
    return-void
.end method

.method public setViewParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 380
    return-void
.end method

.method public setWorkerProxy(Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;)V
    .locals 0

    .line 370
    return-void
.end method

.method public showErrorView(Landroid/view/View;)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 253
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->g:Landroid/view/View;

    .line 254
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->h:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->g:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->g:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->f:Lcom/antfin/cube/cubecore/api/CKView;

    if-eqz p1, :cond_1

    .line 259
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/antfin/cube/cubecore/api/CKView;->setVisibility(I)V

    .line 261
    :cond_1
    return-void
.end method

.method public stopLoading()V
    .locals 2

    .line 407
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->e:Ljava/lang/String;

    const-string v1, "cube  stopLoading  do nothing "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    return-void
.end method
