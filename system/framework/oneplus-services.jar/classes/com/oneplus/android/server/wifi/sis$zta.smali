.class Lcom/oneplus/android/server/wifi/sis$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/wifi/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/wifi/sis;


# direct methods
.method private constructor <init>(Lcom/oneplus/android/server/wifi/sis;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/android/server/wifi/sis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/android/server/wifi/sis;Lcom/oneplus/android/server/wifi/zta;)V
    .locals 0

    invoke-direct {p0, p1}, <init>(Lcom/oneplus/android/server/wifi/sis;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/android/server/wifi/sis;

    invoke-static {v0, p1}, Lcom/oneplus/android/server/wifi/sis;->zta(Lcom/oneplus/android/server/wifi/sis;Lorg/json/JSONArray;)V

    iget-object p0, p0, this$0:Lcom/oneplus/android/server/wifi/sis;

    invoke-static {p0}, Lcom/oneplus/android/server/wifi/sis;->tsu(Lcom/oneplus/android/server/wifi/sis;)V

    return-void
.end method
