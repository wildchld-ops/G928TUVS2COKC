.class public Lcom/android/phone/callsettings/PresetImageChooserActivity;
.super Landroid/app/Activity;
.source "PresetImageChooserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private mAdapter:Lcom/android/phone/callsettings/IconGridAdapter;

.field private mCaller:Ljava/lang/String;

.field private mGridView:Landroid/widget/GridView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/PresetImageChooserActivity;->mCaller:Ljava/lang/String;

    return-void
.end method

.method private showAppDetails(Ljava/lang/String;)Z
    .locals 5

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/PresetImageChooserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImageChooserActivity;->finish()V

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImageChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x400

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImageChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImageChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImageChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v4, v5}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImageChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "caller"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/PresetImageChooserActivity;->mCaller:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImageChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preset_name"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f040096

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/PresetImageChooserActivity;->setContentView(I)V

    const v4, 0x7f1001b6

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/PresetImageChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    iput-object v4, p0, Lcom/android/phone/callsettings/PresetImageChooserActivity;->mGridView:Landroid/widget/GridView;

    const-string v4, "photo"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "video"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    new-instance v4, Lcom/android/phone/callsettings/IconGridAdapter;

    invoke-direct {v4, p0, v6, v6}, Lcom/android/phone/callsettings/IconGridAdapter;-><init>(Landroid/content/Context;ZZ)V

    iput-object v4, p0, Lcom/android/phone/callsettings/PresetImageChooserActivity;->mAdapter:Lcom/android/phone/callsettings/IconGridAdapter;

    const-string v4, "rearrange_preset_image_setting"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImageChooserActivity;->mGridView:Landroid/widget/GridView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImageChooserActivity;->mGridView:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImageChooserActivity;->mAdapter:Lcom/android/phone/callsettings/IconGridAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImageChooserActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImageChooserActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const v4, 0x7f1001b5

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/PresetImageChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/ResolverDrawerLayout;

    if-eqz v3, :cond_2

    new-instance v4, Lcom/android/phone/callsettings/PresetImageChooserActivity$1;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/PresetImageChooserActivity$1;-><init>(Lcom/android/phone/callsettings/PresetImageChooserActivity;)V

    invoke-virtual {v3, v4}, Lcom/android/phone/callsettings/ResolverDrawerLayout;->setOnClickOutsideListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    :cond_3
    new-instance v4, Lcom/android/phone/callsettings/IconGridAdapter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v6, v5}, Lcom/android/phone/callsettings/IconGridAdapter;-><init>(Landroid/content/Context;ZZ)V

    iput-object v4, p0, Lcom/android/phone/callsettings/PresetImageChooserActivity;->mAdapter:Lcom/android/phone/callsettings/IconGridAdapter;

    const-string v4, "rearrange_preset_image_setting"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImageChooserActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v7}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "selected"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/callsettings/PresetImageChooserActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImageChooserActivity;->finish()V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PresetImageChooserActivity;->showAppDetails(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImageChooserActivity;->finish()V

    return-void
.end method
