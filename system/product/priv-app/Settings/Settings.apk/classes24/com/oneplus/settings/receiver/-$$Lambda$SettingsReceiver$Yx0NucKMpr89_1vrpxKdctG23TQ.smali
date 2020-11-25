.class public final synthetic Lcom/oneplus/settings/receiver/-$$Lambda$SettingsReceiver$Yx0NucKMpr89_1vrpxKdctG23TQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/oneplus/settings/receiver/-$$Lambda$SettingsReceiver$Yx0NucKMpr89_1vrpxKdctG23TQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/receiver/-$$Lambda$SettingsReceiver$Yx0NucKMpr89_1vrpxKdctG23TQ;

    invoke-direct {v0}, <init>()V

    sput-object v0, INSTANCE:Lcom/oneplus/settings/receiver/-$$Lambda$SettingsReceiver$Yx0NucKMpr89_1vrpxKdctG23TQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/content/om/OverlayInfo;

    invoke-static {p1}, Lcom/oneplus/settings/receiver/SettingsReceiver;->lambda$static$0(Landroid/content/om/OverlayInfo;)I

    move-result p1

    return p1
.end method
