.class Lcom/alipay/mobile/nebulax/engine/a/d/d$4;
.super Ljava/lang/Object;
.source "NXWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/d/d;->a(Landroid/app/Activity;Lcom/alipay/mobile/nebulacore/web/H5WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/GestureDetector;

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/a/d/d;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/d;Landroid/view/GestureDetector;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d$4;->b:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d$4;->a:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 604
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d$4;->a:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 605
    const/4 p1, 0x0

    return p1
.end method
