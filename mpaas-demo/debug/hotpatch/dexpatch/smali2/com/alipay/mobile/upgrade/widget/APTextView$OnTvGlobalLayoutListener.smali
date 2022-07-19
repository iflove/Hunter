.class Lcom/alipay/mobile/upgrade/widget/APTextView$OnTvGlobalLayoutListener;
.super Ljava/lang/Object;
.source "APTextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/upgrade/widget/APTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTvGlobalLayoutListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/upgrade/widget/APTextView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/upgrade/widget/APTextView;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView$OnTvGlobalLayoutListener;->this$0:Lcom/alipay/mobile/upgrade/widget/APTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/upgrade/widget/APTextView;Lcom/alipay/mobile/upgrade/widget/APTextView$1;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/alipay/mobile/upgrade/widget/APTextView$OnTvGlobalLayoutListener;-><init>(Lcom/alipay/mobile/upgrade/widget/APTextView;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/widget/APTextView$OnTvGlobalLayoutListener;->this$0:Lcom/alipay/mobile/upgrade/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/widget/APTextView$OnTvGlobalLayoutListener;->this$0:Lcom/alipay/mobile/upgrade/widget/APTextView;

    # invokes: Lcom/alipay/mobile/upgrade/widget/APTextView;->autoSplitText()Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->access$100(Lcom/alipay/mobile/upgrade/widget/APTextView;)Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/alipay/mobile/upgrade/widget/APTextView$OnTvGlobalLayoutListener;->this$0:Lcom/alipay/mobile/upgrade/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_0
    goto :goto_0

    .line 291
    :catchall_0
    move-exception v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "commonui"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_0
    return-void
.end method
