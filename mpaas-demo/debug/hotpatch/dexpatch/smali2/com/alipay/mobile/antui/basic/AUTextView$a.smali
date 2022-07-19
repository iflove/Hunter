.class final Lcom/alipay/mobile/antui/basic/AUTextView$a;
.super Ljava/lang/Object;
.source "AUTextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/basic/AUTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUTextView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/antui/basic/AUTextView;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUTextView$a;->a:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/antui/basic/AUTextView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 332
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView$a;-><init>(Lcom/alipay/mobile/antui/basic/AUTextView;)V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView$a;->a:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView$a;->a:Lcom/alipay/mobile/antui/basic/AUTextView;

    # invokes: Lcom/alipay/mobile/antui/basic/AUTextView;->autoSplitText()Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->access$100(Lcom/alipay/mobile/antui/basic/AUTextView;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 338
    .local v1, "newText":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTextView$a;->a:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    .end local v1    # "newText":Ljava/lang/String;
    :cond_0
    return-void

    .line 341
    :catchall_0
    move-exception v0

    .line 342
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "commonui"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method
