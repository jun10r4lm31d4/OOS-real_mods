.class final enum Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;
.super Ljava/lang/Enum;
.source "DnsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ValidationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

.field public static final enum FAILED:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

.field public static final enum IN_PROGRESS:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

.field public static final enum SUCCEEDED:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    const/4 v1, 0x0

    const-string v2, "IN_PROGRESS"

    invoke-direct {v0, v2, v1}, <init>(Ljava/lang/String;I)V

    sput-object v0, IN_PROGRESS:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    new-instance v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    const/4 v2, 0x1

    const-string v3, "FAILED"

    invoke-direct {v0, v3, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, FAILED:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    new-instance v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    const/4 v3, 0x2

    const-string v4, "SUCCEEDED"

    invoke-direct {v0, v4, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, SUCCEEDED:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    sget-object v4, IN_PROGRESS:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    aput-object v4, v0, v1

    sget-object v1, FAILED:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    aput-object v1, v0, v2

    sget-object v1, SUCCEEDED:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    aput-object v1, v0, v3

    sput-object v0, $VALUES:[Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;
    .locals 1

    const-class v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;
    .locals 1

    sget-object v0, $VALUES:[Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    invoke-virtual {v0}, [Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    return-object v0
.end method
