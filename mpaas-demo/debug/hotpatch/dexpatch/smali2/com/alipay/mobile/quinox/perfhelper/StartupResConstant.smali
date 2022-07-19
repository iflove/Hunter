.class public Lcom/alipay/mobile/quinox/perfhelper/StartupResConstant;
.super Ljava/lang/Object;
.source "StartupResConstant.java"


# static fields
.field public static final STARTUP_DRAWABLES:[Ljava/lang/String;

.field public static final STARTUP_LAYOUTS:[Ljava/lang/String;

.field public static final STARTUP_LAYOUTS_CANT_CACHE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 5
    const-string v0, "com.alipay.android.phone.openplatform:layout/alipay_home_layout"

    const-string v1, "com.alipay.android.phone.openplatform:layout/alipay_home_head"

    const-string v2, "com.alipay.android.phone.openplatform:layout/alipay_tab_msg_bar"

    const-string v3, "com.alipay.android.widget.fortunehome:layout/tab_bar_view"

    const-string v4, "com.alipay.android.phone.discovery.o2ohome:layout/o2o_tab_bar_view"

    const-string v5, "com.alipay.mobile.socialwidget:layout/social_tab_view"

    const-string v6, "com.alipay.android.phone.wealth.home:layout/asset_tab_bar_view"

    const-string v7, "com.alipay.mobile.homefeeds:layout/card_list_foot"

    const-string v8, "com.alipay.mobile.socialcardwidget:layout/layout_message_box_componet_item"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/perfhelper/StartupResConstant;->STARTUP_LAYOUTS:[Ljava/lang/String;

    .line 19
    const-string v1, "com.alipay.android.tablauncher:layout/launcher_tab"

    const-string v2, "com.alipay.mobile.base.commonbiz:layout/launcher_title_bar"

    const-string v3, "com.alipay.mobile.base.commonbiz:layout/title_search_button"

    const-string v4, "com.alipay.mobile.socialwidget:layout/title_contact_button"

    const-string v5, "com.alipay.mobile.base.commonbiz:layout/launcher_title_search_item"

    const-string v6, "com.alipay.mobile.antui:layout/default_badge_layout"

    const-string v7, "com.alipay.mobile.homefeeds:layout/home_advertisement"

    const-string v8, "com.alipay.mobile.socialcardwidget:layout/card_new_user"

    const-string v9, "com.alipay.mobile.socialcardwidget:layout/layout_recommendation_component"

    const-string v10, "com.alipay.android.phone.openplatform:layout/home_app_info"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/perfhelper/StartupResConstant;->STARTUP_LAYOUTS_CANT_CACHE:[Ljava/lang/String;

    .line 34
    const-string v1, "com.alipay.android.tablauncher:drawable/tab_black_bg"

    const-string v2, "com.alipay.android.phone.openplatform:drawable/tab_bar_alipay"

    const-string v3, "com.alipay.android.widget.fortunehome:drawable/tab_bar_asset"

    const-string v4, "com.alipay.android.phone.discovery.o2ohome:drawable/tab_bar_o2o"

    const-string v5, "com.alipay.mobile.socialwidget:drawable/tab_bar_social"

    const-string v6, "com.alipay.android.phone.openplatform:drawable/async_home_head_btn_selector"

    const-string v7, "com.alipay.mobile.socialcardwidget:drawable/default_image_drawable"

    const-string v8, "com.alipay.mobile.socialcardwidget:drawable/message_center_smart_ant_00"

    const-string v9, "com.alipay.mobile.socialcardwidget:drawable/smart_ant_enter"

    const-string v10, "com.alipay.mobile.socialcardwidget:drawable/smart_ant_message_loop"

    const-string v11, "com.alipay.mobile.socialcardwidget:drawable/smart_ant_no_message_loop"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/perfhelper/StartupResConstant;->STARTUP_DRAWABLES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
