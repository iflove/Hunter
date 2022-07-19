.class final Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;
.super Ljava/lang/Object;
.source "AUWidgetMsgFlag.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->refreshMsgFlag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    .line 161
    iput-object p1, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;->a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;->a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    iget v1, v0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mTemporaryMsgCount:I

    iget-object v2, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;->a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    iget v2, v2, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mPersistenceMsgCount:I

    iget-object v3, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;->a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    iget v3, v3, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mDescendantCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->calculateMsgCount(III)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 168
    .local v2, "msgCount":I
    move v2, v0

    const/4 v3, 0x4

    if-gtz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;->a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->setVisibility(I)V

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;->a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    iget v0, v0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mMsgStyle:I

    sget v4, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->MSG_STYLE_POINT:I

    if-ne v0, v4, :cond_1

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;->a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagBgImg:Lcom/alipay/mobile/antui/basic/AUImageView;
    invoke-static {v0}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->access$000(Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;)Lcom/alipay/mobile/antui/basic/AUImageView;

    move-result-object v0

    sget v4, Lcom/alipay/mobile/antui/R$drawable;->shock_point_small:I

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/antui/basic/AUImageView;->setImageResource(I)V

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;->a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagBgImg:Lcom/alipay/mobile/antui/basic/AUImageView;
    invoke-static {v0}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->access$000(Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;)Lcom/alipay/mobile/antui/basic/AUImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;->a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagText:Lcom/alipay/mobile/antui/basic/AUTextView;
    invoke-static {v0}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->access$100(Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;)Lcom/alipay/mobile/antui/basic/AUTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;->a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    iget v0, v0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mMsgStyle:I

    sget v4, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->MSG_STYLE_NEW:I

    if-ne v0, v4, :cond_2

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;->a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagBgImg:Lcom/alipay/mobile/antui/basic/AUImageView;
    invoke-static {v0}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->access$000(Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;)Lcom/alipay/mobile/antui/basic/AUImageView;

    move-result-object v0

    sget v4, Lcom/alipay/mobile/antui/R$drawable;->shock_point_more:I

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/antui/basic/AUImageView;->setImageResource(I)V

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;->a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagBgImg:Lcom/alipay/mobile/antui/basic/AUImageView;
    invoke-static {v0}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->access$000(Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;)Lcom/alipay/mobile/antui/basic/AUImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;->a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagText:Lcom/alipay/mobile/antui/basic/AUTextView;
    invoke-static {v0}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->access$100(Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;)Lcom/alipay/mobile/antui/basic/AUTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    goto :goto_0

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;->a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    iget v0, v0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mMsgStyle:I

    sget v4, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->MSG_STYLE_NUM:I

    if-ne v0, v4, :cond_4

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;->a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    iget v0, v0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->maxCount:I

    if-le v2, v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;->a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagBgImg:Lcom/alipay/mobile/antui/basic/AUImageView;
    invoke-static {v0}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->access$000(Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;)Lcom/alipay/mobile/antui/basic/AUImageView;

    move-result-object v0

    sget v4, Lcom/alipay/mobile/antui/R$drawable;->shock_point_more:I

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/antui/basic/AUImageView;->setImageResource(I)V

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;->a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagBgImg:Lcom/alipay/mobile/antui/basic/AUImageView;
    invoke-static {v0}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->access$000(Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;)Lcom/alipay/mobile/antui/basic/AUImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;->a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagText:Lcom/alipay/mobile/antui/basic/AUTextView;
    invoke-static {v0}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->access$100(Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;)Lcom/alipay/mobile/antui/basic/AUTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    goto :goto_0

    .line 185
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "msgText":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;->a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagText:Lcom/alipay/mobile/antui/basic/AUTextView;
    invoke-static {v4}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->access$100(Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;)Lcom/alipay/mobile/antui/basic/AUTextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v4, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;->a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagText:Lcom/alipay/mobile/antui/basic/AUTextView;
    invoke-static {v4}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->access$100(Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;)Lcom/alipay/mobile/antui/basic/AUTextView;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/antui/R$drawable;->shock_point_large:I

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/antui/basic/AUTextView;->setBackgroundResource(I)V

    .line 188
    iget-object v4, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;->a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagText:Lcom/alipay/mobile/antui/basic/AUTextView;
    invoke-static {v4}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->access$100(Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;)Lcom/alipay/mobile/antui/basic/AUTextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 189
    iget-object v4, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;->a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->mFlagBgImg:Lcom/alipay/mobile/antui/basic/AUImageView;
    invoke-static {v4}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->access$000(Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;)Lcom/alipay/mobile/antui/basic/AUImageView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    .line 192
    .end local v0    # "msgText":Ljava/lang/String;
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;->a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag$1;->a:Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/common/AUWidgetMsgFlag;->postInvalidate()V

    .line 196
    return-void
.end method
