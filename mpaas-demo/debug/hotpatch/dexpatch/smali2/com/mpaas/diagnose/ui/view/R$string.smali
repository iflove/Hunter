.class public final Lcom/mpaas/diagnose/ui/view/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/diagnose/ui/view/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static final app_name:I

.field public static final biz_select_title:I

.field public static final case_select_title:I

.field public static final title:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    const-string v0, "string"

    const-string v1, "app_name"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/diagnose/ui/view/R$string;->app_name:I

    .line 61
    const-string v1, "biz_select_title"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/diagnose/ui/view/R$string;->biz_select_title:I

    .line 62
    const-string v1, "case_select_title"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/diagnose/ui/view/R$string;->case_select_title:I

    .line 63
    const-string v1, "title"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/diagnose/ui/view/R$string;->title:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
