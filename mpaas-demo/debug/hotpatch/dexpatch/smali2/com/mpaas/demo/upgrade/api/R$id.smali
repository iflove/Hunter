.class public final Lcom/mpaas/demo/upgrade/api/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/demo/upgrade/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static final title_atb:I

.field public static final upgrade_cur_version_tv:I

.field public static final upgrade_custom_interval_btn:I

.field public static final upgrade_default_interval_btn:I

.field public static final upgrade_fast_check_btn:I

.field public static final upgrade_fast_check_get_btn:I

.field public static final upgrade_fast_check_has_btn:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    const-string v0, "id"

    const-string v1, "title_atb"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/upgrade/api/R$id;->title_atb:I

    .line 15
    const-string v1, "upgrade_cur_version_tv"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/upgrade/api/R$id;->upgrade_cur_version_tv:I

    .line 16
    const-string v1, "upgrade_custom_interval_btn"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/upgrade/api/R$id;->upgrade_custom_interval_btn:I

    .line 17
    const-string v1, "upgrade_default_interval_btn"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/upgrade/api/R$id;->upgrade_default_interval_btn:I

    .line 18
    const-string v1, "upgrade_fast_check_btn"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/upgrade/api/R$id;->upgrade_fast_check_btn:I

    .line 19
    const-string v1, "upgrade_fast_check_get_btn"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/upgrade/api/R$id;->upgrade_fast_check_get_btn:I

    .line 20
    const-string v1, "upgrade_fast_check_has_btn"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/demo/upgrade/api/R$id;->upgrade_fast_check_has_btn:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
