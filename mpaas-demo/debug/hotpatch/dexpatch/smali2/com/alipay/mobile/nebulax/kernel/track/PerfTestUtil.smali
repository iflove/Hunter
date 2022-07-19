.class public Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;
.super Ljava/lang/Object;
.source "PerfTestUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil$Reportor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PerfTestUtil"

.field private static final TRACE_TAG_APP:J = 0x1000L

.field public static isNeedPreInitUC:Z

.field public static isNeedPreload:Z

.field public static isPerfTestMode:Z

.field public static reportor:Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil$Reportor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->isPerfTestMode:Z

    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->isNeedPreload:Z

    .line 17
    sput-boolean v0, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->isNeedPreInitUC:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asyncTraceBegin(Ljava/lang/String;I)V
    .locals 11

    .line 161
    const-string v0, "PerfTestUtil"

    :try_start_0
    const-class v1, Landroid/os/Trace;

    const-string v2, "asyncTraceBegin"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    new-array v3, v3, [Ljava/lang/Object;

    const-wide/16 v9, 0x1000

    .line 163
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v6

    aput-object p0, v3, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v8

    .line 161
    invoke-static {v1, v2, v4, v3}, Lcom/alipay/mobile/nebulax/common/utils/ReflectUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asyncTraceBegin: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_0

    .line 165
    :catch_0
    move-exception p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void
.end method

.method public static asyncTraceEnd(Ljava/lang/String;I)V
    .locals 11

    .line 172
    const-string v0, "PerfTestUtil"

    :try_start_0
    const-class v1, Landroid/os/Trace;

    const-string v2, "asyncTraceEnd"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    new-array v3, v3, [Ljava/lang/Object;

    const-wide/16 v9, 0x1000

    .line 174
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v6

    aput-object p0, v3, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v8

    .line 172
    invoke-static {v1, v2, v4, v3}, Lcom/alipay/mobile/nebulax/common/utils/ReflectUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asyncTraceEnd: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    goto :goto_0

    .line 176
    :catch_0
    move-exception p0

    .line 177
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void
.end method

.method public static forceDeleteMeta(Landroid/os/Bundle;)Z
    .locals 2

    .line 110
    invoke-static {}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->isPerfTestMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 111
    return v1

    .line 114
    :cond_0
    nop

    .line 115
    const-string v0, "forceDeleteMeta"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 116
    const-string v0, "yes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const/4 v1, 0x1

    goto :goto_0

    .line 118
    :cond_1
    const-string v0, "no"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 122
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "forceDeleteMeta="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PerfTestUtil"

    invoke-static {v0, p0}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return v1
.end method

.method public static forceDeletePkg(Landroid/os/Bundle;)Z
    .locals 2

    .line 92
    invoke-static {}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->isPerfTestMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 93
    return v1

    .line 96
    :cond_0
    nop

    .line 97
    const-string v0, "forceDeletePkg"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 98
    const-string v0, "yes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    const/4 v1, 0x1

    goto :goto_0

    .line 100
    :cond_1
    const-string v0, "no"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 104
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "forceDeletePkg="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PerfTestUtil"

    invoke-static {v0, p0}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return v1
.end method

.method public static isNeedPreInitUC()Z
    .locals 1

    .line 46
    invoke-static {}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->isPerfTestMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x1

    return v0

    .line 49
    :cond_0
    sget-boolean v0, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->isNeedPreInitUC:Z

    return v0
.end method

.method public static isNeedPreload()Z
    .locals 2

    .line 36
    invoke-static {}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->isPerfTestMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x1

    return v0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "useNebulaX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->isNeedPreload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerfTestUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-boolean v0, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->isNeedPreload:Z

    return v0
.end method

.method public static isPerfTestMode()Z
    .locals 1

    .line 31
    sget-boolean v0, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->isPerfTestMode:Z

    return v0
.end method

.method public static final log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 151
    :try_start_0
    const-class v0, Landroid/util/Log;

    const-string v1, "e"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-static {v0, v1, v3, v2}, Lcom/alipay/mobile/nebulax/common/utils/ReflectUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    goto :goto_0

    .line 153
    :catchall_0
    move-exception p0

    .line 156
    :goto_0
    return-void
.end method

.method public static reportPerfData(Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulax/kernel/track/Event;",
            ">;",
            "Lcom/alipay/mobile/nebulax/kernel/node/Node;",
            ")V"
        }
    .end annotation

    .line 128
    invoke-static {}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->isPerfTestMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->reportPerfData(Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/util/Map;)V

    .line 132
    return-void
.end method

.method public static reportPerfData(Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulax/kernel/track/Event;",
            ">;",
            "Lcom/alipay/mobile/nebulax/kernel/node/Node;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 135
    invoke-static {}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->isPerfTestMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    return-void

    .line 138
    :cond_0
    const-string v0, "PerfTestUtil"

    const-string v1, "start reportPerfData"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->reportor:Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil$Reportor;

    if-eqz v1, :cond_1

    .line 141
    invoke-interface {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil$Reportor;->reportPerfData(Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_1
    goto :goto_0

    .line 143
    :catchall_0
    move-exception p0

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "reportPerfData error"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void
.end method

.method public static setReportor(Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil$Reportor;)V
    .locals 0

    .line 26
    sput-object p0, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->reportor:Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil$Reportor;

    .line 27
    return-void
.end method

.method public static useCubeRender(Landroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 2

    .line 73
    invoke-static {}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->isPerfTestMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 74
    return-object v1

    .line 77
    :cond_0
    nop

    .line 79
    const-string v0, "useCube"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 80
    const-string v0, "yes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 82
    :cond_1
    const-string v0, "no"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 83
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 86
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "useCubeRender="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PerfTestUtil"

    invoke-static {v0, p0}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-object v1
.end method

.method public static useNebulaX(Landroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 2

    .line 54
    invoke-static {}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->isPerfTestMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 55
    return-object v1

    .line 58
    :cond_0
    nop

    .line 60
    const-string v0, "nebulax"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 61
    const-string v0, "yes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 63
    :cond_1
    const-string v0, "no"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 64
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 67
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "useNebulaX="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PerfTestUtil"

    invoke-static {v0, p0}, Lcom/alipay/mobile/nebulax/kernel/track/PerfTestUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-object v1
.end method
