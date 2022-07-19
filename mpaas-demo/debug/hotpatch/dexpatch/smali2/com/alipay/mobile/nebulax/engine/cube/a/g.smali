.class public Lcom/alipay/mobile/nebulax/engine/cube/a/g;
.super Ljava/lang/Object;
.source "PerformanceHandlerAdapter.java"

# interfaces
.implements Lcom/antfin/cube/platform/handler/ICKPerformanceHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commit(Lcom/antfin/cube/platform/handler/ICKPerformanceHandler$PerformanceType;Lcom/antfin/cube/platform/common/CKPerformance;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/antfin/cube/platform/handler/ICKPerformanceHandler$PerformanceType;",
            "Lcom/antfin/cube/platform/common/CKPerformance;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 22
    const-class p3, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    invoke-static {p3}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    .line 23
    invoke-virtual {p2}, Lcom/antfin/cube/platform/common/CKPerformance;->getAppInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/antfin/cube/platform/common/CKPerformance;->getPageInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/engine/cube/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v0

    .line 25
    nop

    .line 26
    nop

    .line 28
    invoke-virtual {p2}, Lcom/antfin/cube/platform/common/CKPerformance;->getTimeCost()J

    move-result-wide v1

    .line 30
    sget-object v3, Lcom/alipay/mobile/nebulax/engine/cube/a/g$1;->a:[I

    invoke-virtual {p1}, Lcom/antfin/cube/platform/handler/ICKPerformanceHandler$PerformanceType;->ordinal()I

    move-result p1

    aget p1, v3, p1

    const/4 v3, 0x0

    const-string v4, "NebulaXEngine.PerformanceHandlerAdapter"

    packed-switch p1, :pswitch_data_0

    move-object p1, v3

    goto/16 :goto_0

    .line 135
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ck page create block "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_page_create_block:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 137
    sget-object p1, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_page_create_block_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 138
    goto/16 :goto_0

    .line 129
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ck app create block "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_app_create_block:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 131
    sget-object p1, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_app_create_block_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 132
    goto/16 :goto_0

    .line 123
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ck sdk init block "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_sdk_init:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 125
    sget-object p1, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_sdk_init_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 126
    goto/16 :goto_0

    .line 117
    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ck bridge block "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_bridge_block:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 119
    sget-object p1, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_bridge_block_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 120
    goto/16 :goto_0

    .line 111
    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ck core block "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_core_block:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 113
    sget-object p1, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_core_block_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 114
    goto/16 :goto_0

    .line 105
    :pswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ck platform block "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_platform_block:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 107
    sget-object p1, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_platform_block_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 108
    goto/16 :goto_0

    .line 99
    :pswitch_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load bridge "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_lib_native_bridge:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 101
    sget-object p1, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_lib_native_bridge_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 102
    goto/16 :goto_0

    .line 93
    :pswitch_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load core "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_lib_native_core:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 95
    sget-object p1, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_lib_native_core_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 96
    goto/16 :goto_0

    .line 87
    :pswitch_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load platform "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_lib_native_platform:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 89
    sget-object p1, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_lib_native_platform_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 90
    goto/16 :goto_0

    .line 81
    :pswitch_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lib native bitmap "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_lib_native_bitmap:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 83
    sget-object p1, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_lib_native_bitmap_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 84
    goto/16 :goto_0

    .line 75
    :pswitch_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lib c++ time "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_lib_c_plus:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 77
    sget-object p1, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_lib_c_plus_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 78
    goto/16 :goto_0

    .line 69
    :pswitch_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lib init time "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_lib_init:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 71
    sget-object p1, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_lib_init_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 72
    goto/16 :goto_0

    .line 64
    :pswitch_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bridge ready "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_br_ready:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 66
    sget-object p1, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_br_ready_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 67
    goto/16 :goto_0

    .line 58
    :pswitch_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "page render first screen "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_fst_scr:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 60
    sget-object p1, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_fst_scr_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 61
    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Engine_FirstScreen:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {p2}, Lcom/antfin/cube/platform/common/CKPerformance;->getLastTimeMillion()J

    move-result-wide v4

    invoke-interface {p3, v0, v1, v4, v5}, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;J)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 62
    goto/16 :goto_0

    .line 52
    :pswitch_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "page render first element "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_fst_elem:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 54
    sget-object p1, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_fst_elem_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 55
    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Engine_FirstElement:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {p2}, Lcom/antfin/cube/platform/common/CKPerformance;->getLastTimeMillion()J

    move-result-wide v4

    invoke-interface {p3, v0, v1, v4, v5}, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;J)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 56
    goto :goto_0

    .line 47
    :pswitch_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "js node create "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_jsnode_crt:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 49
    sget-object p1, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_jsnode_crt_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 50
    goto :goto_0

    .line 42
    :pswitch_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create app context "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_app_crt:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 44
    sget-object p1, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_app_crt_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 45
    goto :goto_0

    .line 37
    :pswitch_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init jsfm "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_jsfm_init:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 39
    sget-object p1, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_jsfm_init_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 40
    goto :goto_0

    .line 32
    :pswitch_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app create cost "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_sdk_init:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 34
    sget-object p1, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_ck_sdk_init_cost:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 35
    nop

    .line 144
    :goto_0
    invoke-virtual {p2}, Lcom/antfin/cube/platform/common/CKPerformance;->getLastTimeMillion()J

    move-result-wide v1

    invoke-interface {p3, v0, v3, v1, v2}, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;J)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    move-result-object p3

    .line 145
    invoke-virtual {p2}, Lcom/antfin/cube/platform/common/CKPerformance;->getTimeCost()J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/alipay/mobile/nebulax/kernel/track/Event;->putAttr(Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;J)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 146
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
