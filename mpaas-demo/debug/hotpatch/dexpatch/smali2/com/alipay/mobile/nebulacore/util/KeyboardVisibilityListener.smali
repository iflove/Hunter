.class public Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;
.super Ljava/lang/Object;
.source "KeyboardVisibilityListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener$KeyboardListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "KeyboardVisibilityListener"

.field private static f:I

.field private static g:I


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener$KeyboardListener;

.field private c:Z

.field private d:I

.field private e:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->f:I

    .line 23
    sput v0, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->c:Z

    .line 20
    iput v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->d:I

    .line 21
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->e:Landroid/graphics/Rect;

    .line 26
    if-nez p1, :cond_0

    .line 27
    return-void

    .line 30
    :cond_0
    :try_start_0
    sget v0, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "H5NavigationBar"

    if-nez v0, :cond_1

    .line 31
    const/high16 v0, 0x43480000    # 200.0f

    :try_start_1
    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->f:I

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "default keyboard height = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_1
    sget v0, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->g:I

    if-nez v0, :cond_2

    .line 36
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->g:I

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "status bar height = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->a:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KeyboardVisibilityListener"

    const-string v2, "exception detail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->b:Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener$KeyboardListener;

    if-nez v0, :cond_0

    .line 59
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 63
    .local v0, "rootViewHeight":I
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->e:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 64
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->e:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 65
    .local v1, "currentHeight":I
    sub-int v2, v0, v1

    .line 66
    .local v2, "statusBarHeight":I
    iget v3, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->d:I

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    sget v4, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->g:I

    if-ne v2, v4, :cond_2

    .line 68
    :cond_1
    iput v1, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->d:I

    .line 69
    return-void

    .line 72
    :cond_2
    sub-int v4, v3, v1

    sget v5, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->f:I

    if-le v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 73
    .local v4, "keyboardVisible":Z
    :goto_0
    iget-boolean v5, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->c:Z

    if-ne v5, v4, :cond_4

    .line 74
    return-void

    .line 77
    :cond_4
    sub-int/2addr v3, v1

    .line 78
    .local v3, "keyboardHeight":I
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->b:Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener$KeyboardListener;

    invoke-interface {v5, v4, v3}, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener$KeyboardListener;->onKeyboardVisible(ZI)V

    .line 79
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->c:Z

    .line 80
    return-void
.end method

.method public setListener(Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener$KeyboardListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener$KeyboardListener;

    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->b:Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener$KeyboardListener;

    .line 49
    if-nez p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 54
    return-void
.end method
