.class public final Ltest/aompfilemanager/alipay/com/testlibrary/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltest/aompfilemanager/alipay/com/testlibrary/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static final list:I

.field public static final page:I

.field public static final page_index:I

.field public static final title_bar:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    const-string v0, "id"

    const-string v1, "list"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Ltest/aompfilemanager/alipay/com/testlibrary/R$id;->list:I

    .line 12
    const-string v1, "page"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Ltest/aompfilemanager/alipay/com/testlibrary/R$id;->page:I

    .line 13
    const-string v1, "page_index"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Ltest/aompfilemanager/alipay/com/testlibrary/R$id;->page_index:I

    .line 14
    const-string v1, "title_bar"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Ltest/aompfilemanager/alipay/com/testlibrary/R$id;->title_bar:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
