.class Lcom/alipay/mobile/nebulax/engine/a/d/d$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NXWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/d/d;->a(Landroid/app/Activity;Lcom/alipay/mobile/nebulacore/web/H5WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/a/d/d;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/d;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d$3;->a:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 593
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/h5container/api/H5Flag;->lastTouchTime:J

    .line 594
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d$3;->a:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    invoke-static {p1}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a(Lcom/alipay/mobile/nebulax/engine/a/d/d;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/alipay/mobile/h5container/api/H5Flag;->lastTouchTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const/4 p1, 0x0

    return p1
.end method
