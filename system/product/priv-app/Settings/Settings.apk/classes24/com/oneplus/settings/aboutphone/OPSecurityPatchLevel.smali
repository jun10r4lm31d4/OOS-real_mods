.class public Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;
.super Landroidx/preference/Preference;
.source "OPSecurityPatchLevel.java"


# static fields
.field private static final INTENT_URI_DATA:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "https://source.android.com/security/bulletin/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, INTENT_URI_DATA:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, initViews(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    sget-object v0, INTENT_URI_DATA:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;)Lcom/android/settings/applications/PackageManagerWrapper;
    .locals 1

    iget-object v0, p0, mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/applications/PackageManagerWrapper;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    const v0, 0x7f0d0225

    invoke-virtual {p0, v0}, setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getSecurityPatch()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a061f

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0621

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v1, :cond_1

    new-instance v3, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel$1;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel$1;-><init>(Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
