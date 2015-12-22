.class public Lcom/android/phone/callsettings/IconGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "IconGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/IconGridAdapter$ViewHolder;,
        Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;
    }
.end annotation


# static fields
.field private static VALID_CHOOSER_APP_IDS:[[I

.field private static VALID_CHOOSER_DEFAULT_APP_IDS:[[I

.field private static enableDefault:Z

.field private static gridItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;",
            ">;"
        }
    .end annotation
.end field

.field private static isChoose:Z

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    sput-boolean v3, Lcom/android/phone/callsettings/IconGridAdapter;->isChoose:Z

    sput-boolean v3, Lcom/android/phone/callsettings/IconGridAdapter;->enableDefault:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/callsettings/IconGridAdapter;->gridItem:Ljava/util/List;

    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/callsettings/IconGridAdapter;->VALID_CHOOSER_DEFAULT_APP_IDS:[[I

    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/phone/callsettings/IconGridAdapter;->VALID_CHOOSER_APP_IDS:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x3
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_3
    .array-data 4
        0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_4
    .array-data 4
        0x4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_5
    .array-data 4
        0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_6
    .array-data 4
        0x3
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_8
    .array-data 4
        0x4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Z
    .param p3    # Z

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/IconGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    sput-object p1, Lcom/android/phone/callsettings/IconGridAdapter;->mContext:Landroid/content/Context;

    sput-boolean p2, Lcom/android/phone/callsettings/IconGridAdapter;->isChoose:Z

    sput-boolean p3, Lcom/android/phone/callsettings/IconGridAdapter;->enableDefault:Z

    sget-object v0, Lcom/android/phone/callsettings/IconGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/callsettings/IconGridAdapter;->getData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/IconGridAdapter;->gridItem:Ljava/util/List;

    return-void
.end method

.method protected static AddPackageItem4Choose(Landroid/content/Context;Ljava/util/List;I)V
    .locals 6
    .param p0    # Landroid/content/Context;
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;",
            ">;I)V"
        }
    .end annotation

    const/4 v5, 0x1

    const-string v0, "IconGridAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddPackageItem Adding : itemType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    packed-switch p2, :pswitch_data_0

    const-string v0, "IconGridAdapter"

    const-string v1, "AddPackageItem failure : unknown itemType"

    invoke-static {v0, v1, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "com.android.phone"

    const v3, 0x7f0a037d

    const v4, 0x7f020085

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/phone/callsettings/IconGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    goto :goto_0

    :pswitch_1
    const-string v1, "com.sec.android.gallery3d"

    const v3, 0x7f0a0385

    const v4, 0x7f020086

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/phone/callsettings/IconGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    goto :goto_0

    :pswitch_2
    const-string v1, "com.sec.android.app.camera"

    const v3, 0x7f0a0386

    const v4, 0x7f020084

    const/4 v5, 0x2

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/phone/callsettings/IconGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    goto :goto_0

    :pswitch_3
    const-string v1, "com.sec.android.gallery3d"

    const v3, 0x7f0a037c

    const v4, 0x7f020087

    const/4 v5, 0x3

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/phone/callsettings/IconGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    goto :goto_0

    :pswitch_4
    const-string v1, "com.sec.android.app.camera"

    const v3, 0x7f0a0379

    const v4, 0x7f020083

    const/4 v5, 0x4

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/phone/callsettings/IconGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z
    .locals 5
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;",
            ">;III)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/phone/callsettings/IconGridAdapter;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    if-gez p4, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p2, p3, v0, p5, p1}, Lcom/android/phone/callsettings/IconGridAdapter;->addItem(Ljava/util/List;ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    const/4 v2, 0x1

    :goto_1
    return v2

    :catch_0
    move-exception v1

    const-string v2, "IconGridAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NameNotFoundException!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected static addItem(Ljava/util/List;ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V
    .locals 1
    .param p1    # I
    .param p2    # Landroid/graphics/drawable/Drawable;
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;",
            ">;I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;-><init>(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getApplicationStringResId(I)I
    .locals 1
    .param p0    # I

    sget-object v0, Lcom/android/phone/callsettings/IconGridAdapter;->gridItem:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;

    # getter for: Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;->mTitleResId:I
    invoke-static {v0}, Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;->access$000(Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;)I

    move-result v0

    return v0
.end method

.method protected static getData(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .param p0    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    sget-boolean v6, Lcom/android/phone/callsettings/IconGridAdapter;->enableDefault:Z

    if-eqz v6, :cond_5

    sget-object v0, Lcom/android/phone/callsettings/IconGridAdapter;->VALID_CHOOSER_DEFAULT_APP_IDS:[[I

    array-length v5, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v2, v0, v3

    aget v6, v2, v7

    if-eq v6, v10, :cond_0

    const-string v6, "rearrange_preset_image_setting"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    aget v6, v2, v7

    if-ge v6, v9, :cond_0

    aget v6, v2, v7

    invoke-static {p0, v1, v6}, Lcom/android/phone/callsettings/IconGridAdapter;->AddPackageItem4Choose(Landroid/content/Context;Ljava/util/List;I)V

    add-int/lit8 v4, v4, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    aget v6, v2, v7

    invoke-static {p0, v1, v6}, Lcom/android/phone/callsettings/IconGridAdapter;->AddPackageItem4Choose(Landroid/content/Context;Ljava/util/List;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-nez v4, :cond_b

    const-string v6, "IconGridAdapter"

    const-string v7, "getData use predefined items"

    invoke-static {v6, v7, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v0, Lcom/android/phone/callsettings/IconGridAdapter;->VALID_CHOOSER_DEFAULT_APP_IDS:[[I

    array-length v5, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_b

    aget-object v2, v0, v3

    const-string v6, "rearrange_preset_image_setting"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    aget v6, v2, v8

    if-ge v6, v9, :cond_3

    aget v6, v2, v8

    invoke-static {p0, v1, v6}, Lcom/android/phone/callsettings/IconGridAdapter;->AddPackageItem4Choose(Landroid/content/Context;Ljava/util/List;I)V

    add-int/lit8 v4, v4, 0x1

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    aget v6, v2, v8

    invoke-static {p0, v1, v6}, Lcom/android/phone/callsettings/IconGridAdapter;->AddPackageItem4Choose(Landroid/content/Context;Ljava/util/List;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/android/phone/callsettings/IconGridAdapter;->VALID_CHOOSER_APP_IDS:[[I

    array-length v5, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_8

    aget-object v2, v0, v3

    aget v6, v2, v7

    if-eq v6, v10, :cond_6

    const-string v6, "rearrange_preset_image_setting"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    aget v6, v2, v7

    if-ge v6, v9, :cond_6

    aget v6, v2, v7

    invoke-static {p0, v1, v6}, Lcom/android/phone/callsettings/IconGridAdapter;->AddPackageItem4Choose(Landroid/content/Context;Ljava/util/List;I)V

    add-int/lit8 v4, v4, 0x1

    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    aget v6, v2, v7

    invoke-static {p0, v1, v6}, Lcom/android/phone/callsettings/IconGridAdapter;->AddPackageItem4Choose(Landroid/content/Context;Ljava/util/List;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    if-nez v4, :cond_b

    const-string v6, "IconGridAdapter"

    const-string v7, "getData use predefined items"

    invoke-static {v6, v7, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v0, Lcom/android/phone/callsettings/IconGridAdapter;->VALID_CHOOSER_APP_IDS:[[I

    array-length v5, v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v5, :cond_b

    aget-object v2, v0, v3

    const-string v6, "rearrange_preset_image_setting"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    aget v6, v2, v8

    if-ge v6, v9, :cond_9

    aget v6, v2, v8

    invoke-static {p0, v1, v6}, Lcom/android/phone/callsettings/IconGridAdapter;->AddPackageItem4Choose(Landroid/content/Context;Ljava/util/List;I)V

    add-int/lit8 v4, v4, 0x1

    :cond_9
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    aget v6, v2, v8

    invoke-static {p0, v1, v6}, Lcom/android/phone/callsettings/IconGridAdapter;->AddPackageItem4Choose(Landroid/content/Context;Ljava/util/List;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_b
    return-object v1
.end method

.method private static isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v3, 0x2

    if-eq v3, v0, :cond_0

    const/4 v3, 0x3

    if-ne v3, v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "IconGridAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/IconGridAdapter;->gridItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    sget-object v0, Lcom/android/phone/callsettings/IconGridAdapter;->gridItem:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/phone/callsettings/IconGridAdapter;->gridItem:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/IconGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04004d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/phone/callsettings/IconGridAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/android/phone/callsettings/IconGridAdapter$ViewHolder;-><init>()V

    const v2, 0x7f1000e5

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/phone/callsettings/IconGridAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v2, 0x7f1000e4

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/phone/callsettings/IconGridAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, v0, Lcom/android/phone/callsettings/IconGridAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iget-object v2, v0, Lcom/android/phone/callsettings/IconGridAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget-object v2, Lcom/android/phone/callsettings/IconGridAdapter;->gridItem:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;

    iget-object v2, v0, Lcom/android/phone/callsettings/IconGridAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    # getter for: Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;->mAppIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;->access$100(Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/android/phone/callsettings/IconGridAdapter$ViewHolder;->title:Landroid/widget/TextView;

    sget-object v3, Lcom/android/phone/callsettings/IconGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    # getter for: Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;->mTitleResId:I
    invoke-static {v1}, Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;->access$000(Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/IconGridAdapter$ViewHolder;

    goto :goto_0
.end method
