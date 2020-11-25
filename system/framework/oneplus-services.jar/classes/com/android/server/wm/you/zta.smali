.class public Lcom/android/server/wm/you/zta;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final Zfa:I = 0x96

.field public static final _fa:Ljava/lang/String; = "net.oneplus.launcher"

.field public static final aga:Ljava/lang/String; = "com.tencent.mm"

.field public static final bga:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final cga:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final dga:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ega:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final fga:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final gga:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final hga:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final iga:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final jga:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "com.tencent.mm/.plugin.base.stub.WXShortcutEntryActivity"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, bga:Ljava/util/Set;

    const-string v0, "com.tencent.mm"

    const-string v1, "com.ucmobile.lite"

    const-string v2, "com.UCMobile"

    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v3

    sput-object v3, cga:Ljava/util/Set;

    const-string v3, "com.tencent.mtt"

    const-string v4, "com.heytap.browser"

    filled-new-array {v0, v2, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, dga:Ljava/util/Set;

    const-string v0, "Splash Screen com.tencent.mtt"

    const-string v4, "Splash Screen com.tencent.mm"

    const-string v5, "com.tencent.mm/com.tencent.mm.app.WeChatSplashActivity"

    const-string v6, "com.tencent.mtt/com.tencent.mtt.MainActivity"

    filled-new-array {v4, v5, v0, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v5

    sput-object v5, ega:Ljava/util/Set;

    const-string v5, "com.tencent.tmgp.sgame"

    const-string v6, "com.tencent.qqlive"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v5

    sput-object v5, fga:Ljava/util/Set;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    sput-object v5, gga:Landroid/util/ArrayMap;

    sget-object v5, gga:Landroid/util/ArrayMap;

    const-string v6, "com.tencent.mm/.ui.LauncherUI"

    const-string v7, "com.tencent.mm/.app.WeChatSplashActivity"

    invoke-virtual {v5, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, gga:Landroid/util/ArrayMap;

    const-string v7, "com.UCMobile/.main.UCMobile"

    const-string v8, "com.UCMobile/com.uc.browser.InnerUCMobile"

    invoke-virtual {v5, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, gga:Landroid/util/ArrayMap;

    const-string v8, "com.ucmobile.lite/com.UCMobile.main.UCMobile"

    const-string v9, "com.ucmobile.lite/com.uc.browser.InnerUCMobile"

    invoke-virtual {v5, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, gga:Landroid/util/ArrayMap;

    const-string v9, "com.tencent.mtt/.SplashActivity"

    const-string v10, "com.tencent.mtt/.MainActivity"

    invoke-virtual {v5, v10, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, hga:Ljava/util/Map;

    sget-object v5, hga:Ljava/util/Map;

    const-wide/16 v10, 0x96

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v5, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, hga:Ljava/util/Map;

    invoke-interface {v3, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, hga:Ljava/util/Map;

    invoke-interface {v2, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, iga:Landroid/util/ArrayMap;

    sget-object v1, iga:Landroid/util/ArrayMap;

    const v2, 0x5070274

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, iga:Landroid/util/ArrayMap;

    const v2, 0x5070276

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, iga:Landroid/util/ArrayMap;

    const v2, 0x5070277

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, iga:Landroid/util/ArrayMap;

    const v2, 0x5070275

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, jga:Landroid/util/ArrayMap;

    sget-object v1, jga:Landroid/util/ArrayMap;

    const-string v2, "com.tencent.mm/com.tencent.mm.ui.LauncherUI"

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, jga:Landroid/util/ArrayMap;

    const-string v2, "com.tencent.mtt/com.tencent.mtt.SplashActivity"

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
