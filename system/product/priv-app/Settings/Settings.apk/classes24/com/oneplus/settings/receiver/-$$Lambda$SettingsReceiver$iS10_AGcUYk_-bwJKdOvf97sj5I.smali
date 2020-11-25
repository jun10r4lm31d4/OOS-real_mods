.class public final synthetic Lcom/oneplus/settings/receiver/-$$Lambda$SettingsReceiver$iS10_AGcUYk_-bwJKdOvf97sj5I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/oneplus/settings/receiver/-$$Lambda$SettingsReceiver$iS10_AGcUYk_-bwJKdOvf97sj5I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/receiver/-$$Lambda$SettingsReceiver$iS10_AGcUYk_-bwJKdOvf97sj5I;

    invoke-direct {v0}, <init>()V

    sput-object v0, INSTANCE:Lcom/oneplus/settings/receiver/-$$Lambda$SettingsReceiver$iS10_AGcUYk_-bwJKdOvf97sj5I;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/om/OverlayInfo;

    invoke-static {p1}, Lcom/oneplus/settings/receiver/SettingsReceiver;->lambda$setOverlay$2(Landroid/content/om/OverlayInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
