.class public final Lcom/android/systemui/SystemUIFactory_ProvideNotificationLockscreenUserManagerFactory;
.super Ljava/lang/Object;
.source "SystemUIFactory_ProvideNotificationLockscreenUserManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/systemui/SystemUIFactory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/SystemUIFactory;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, module:Lcom/android/systemui/SystemUIFactory;

    iput-object p2, p0, contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIFactory_ProvideNotificationLockscreenUserManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/SystemUIFactory;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/SystemUIFactory_ProvideNotificationLockscreenUserManagerFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/SystemUIFactory_ProvideNotificationLockscreenUserManagerFactory;

    invoke-direct {v0, p0, p1}, <init>(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/SystemUIFactory;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;"
        }
    .end annotation

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p0, p1}, proxyProvideNotificationLockscreenUserManager(Lcom/android/systemui/SystemUIFactory;Landroid/content/Context;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideNotificationLockscreenUserManager(Lcom/android/systemui/SystemUIFactory;Landroid/content/Context;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/SystemUIFactory;->provideNotificationLockscreenUserManager(Landroid/content/Context;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
    .locals 1

    iget-object v0, p0, module:Lcom/android/systemui/SystemUIFactory;

    iget-object p0, p0, contextProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, provideInstance(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, get()Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object p0

    return-object p0
.end method
