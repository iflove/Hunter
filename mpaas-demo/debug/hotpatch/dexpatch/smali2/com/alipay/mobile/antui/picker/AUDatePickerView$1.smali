.class final Lcom/alipay/mobile/antui/picker/AUDatePickerView$1;
.super Ljava/lang/Object;
.source "AUDatePickerView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/picker/AUDatePickerView;->findItemIndex(Ljava/util/ArrayList;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/picker/AUDatePickerView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/picker/AUDatePickerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/picker/AUDatePickerView;

    .line 182
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView$1;->a:Lcom/alipay/mobile/antui/picker/AUDatePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "lhsStr":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "rhsStr":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    move-object v0, v3

    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    move-object v1, v2

    .line 189
    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView$1;->a:Lcom/alipay/mobile/antui/picker/AUDatePickerView;

    # invokes: Lcom/alipay/mobile/antui/picker/AUDatePickerView;->checkIntStringVaild(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->access$000(Lcom/alipay/mobile/antui/picker/AUDatePickerView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView$1;->a:Lcom/alipay/mobile/antui/picker/AUDatePickerView;

    # invokes: Lcom/alipay/mobile/antui/picker/AUDatePickerView;->checkIntStringVaild(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->access$000(Lcom/alipay/mobile/antui/picker/AUDatePickerView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    return v2
.end method
