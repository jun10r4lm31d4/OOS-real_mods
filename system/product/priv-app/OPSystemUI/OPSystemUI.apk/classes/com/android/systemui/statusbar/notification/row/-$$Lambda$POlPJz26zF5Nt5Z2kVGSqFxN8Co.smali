.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$POlPJz26zF5Nt5Z2kVGSqFxN8Co;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/notification/row/-$$Lambda$POlPJz26zF5Nt5Z2kVGSqFxN8Co;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$POlPJz26zF5Nt5Z2kVGSqFxN8Co;

    invoke-direct {v0}, <init>()V

    sput-object v0, INSTANCE:Lcom/android/systemui/statusbar/notification/row/-$$Lambda$POlPJz26zF5Nt5Z2kVGSqFxN8Co;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/CancellationSignal;

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    return-void
.end method
