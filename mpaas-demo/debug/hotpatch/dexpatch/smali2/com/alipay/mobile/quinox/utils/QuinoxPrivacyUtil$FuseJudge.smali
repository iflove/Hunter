.class Lcom/alipay/mobile/quinox/utils/QuinoxPrivacyUtil$FuseJudge;
.super Ljava/lang/Object;
.source "QuinoxPrivacyUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/utils/QuinoxPrivacyUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FuseJudge"
.end annotation


# static fields
.field private static final PRIVACY_KILL_PROCESS_TIMESTAMPS:Ljava/lang/String; = "privacy_kill_process_timestamps_"

.field private static final PRIVACY_LAST_COMPONENT:Ljava/lang/String; = "privacy_last_component_"

.field private static final PRIVACY_RESTART_COUNT_THRESHOLD:I = 0x5

.field private static final PRIVACY_RESTART_TIME_THRESHOLD_MILLIS:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "FuseJudge"

.field private static final TIMESTAMP_DELIMITER:Ljava/lang/String; = ","

.field private static final sChecked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sLastResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/mobile/quinox/utils/QuinoxPrivacyUtil$FuseJudge;->sChecked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 135
    sput-boolean v1, Lcom/alipay/mobile/quinox/utils/QuinoxPrivacyUtil$FuseJudge;->sLastResult:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSp(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 218
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static lastTimesToString(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "lastTimes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 214
    const-string v0, ","

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseLastTimes(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "lastKillTimeClocks"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 194
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 197
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "split":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    .local v1, "list":Ljava/util/List;
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    .line 201
    .local v4, "s":Ljava/lang/String;
    move-object v4, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 205
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    goto :goto_1

    .line 206
    :catch_0
    move-exception v5

    .line 207
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "fail parse long = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FuseJudge"

    invoke-static {v7, v6, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    :cond_2
    return-object v1
.end method

.method static shouldKillByFuse(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "currentTimeMillis"    # J
    .param p4, "processName"    # Ljava/lang/String;

    .line 142
    move-object v0, p1

    move-object/from16 v1, p4

    sget-object v2, Lcom/alipay/mobile/quinox/utils/QuinoxPrivacyUtil$FuseJudge;->sChecked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    const-string v4, "FuseJudge"

    if-nez v2, :cond_0

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "already checked\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/quinox/utils/QuinoxPrivacyUtil$FuseJudge;->sLastResult:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-boolean v2, Lcom/alipay/mobile/quinox/utils/QuinoxPrivacyUtil$FuseJudge;->sLastResult:Z

    return v2

    .line 147
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    return v3

    .line 151
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/QuinoxPrivacyUtil$FuseJudge;->getSp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v5, 0x0

    move-object v6, v5

    .line 152
    .local v6, "sp":Landroid/content/SharedPreferences;
    move-object v6, v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "privacy_last_component_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "lastComponent":Ljava/lang/String;
    const/4 v7, 0x1

    .line 156
    .local v7, "kill":Z
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v9, "timestamps":Ljava/util/List;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const-string v11, "privacy_kill_process_timestamps_"

    if-nez v10, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_0

    .line 161
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/QuinoxPrivacyUtil$FuseJudge;->parseLastTimes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 162
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 166
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    const/4 v10, 0x5

    if-le v5, v10, :cond_3

    .line 168
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v10

    invoke-interface {v9, v3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 169
    .local v5, "earliestElements":Ljava/util/List;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "remove earliest elements: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 172
    .end local v5    # "earliestElements":Ljava/util/List;
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v10, :cond_5

    .line 173
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v12, p2, v12

    .line 174
    .local v12, "intervalMillis":J
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "last 5 times interval: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-wide/32 v3, 0xea60

    cmp-long v5, v12, v3

    if-gez v5, :cond_5

    .line 178
    const/4 v7, 0x0

    goto :goto_1

    .line 159
    .end local v12    # "intervalMillis":J
    :cond_4
    :goto_0
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_5
    :goto_1
    sput-boolean v7, Lcom/alipay/mobile/quinox/utils/QuinoxPrivacyUtil$FuseJudge;->sLastResult:Z

    .line 185
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 186
    invoke-static {v9}, Lcom/alipay/mobile/quinox/utils/QuinoxPrivacyUtil$FuseJudge;->lastTimesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 187
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    return v7
.end method
