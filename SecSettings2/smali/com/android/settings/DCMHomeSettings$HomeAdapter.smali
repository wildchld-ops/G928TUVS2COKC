.class Lcom/android/settings/DCMHomeSettings$HomeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DCMHomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DCMHomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DCMHomeSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/DCMHomeSettings;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/android/settings/DCMHomeSettings;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v5, 0x3

    if-ge p1, v5, :cond_2

    const-string v5, "DCMHomeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Convertview is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f07004c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v5, 0x7f1005f1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v5, 0x7f1005f2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f1005f3

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f1005f4

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v5, p0, Lcom/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/android/settings/DCMHomeSettings;

    # getter for: Lcom/android/settings/DCMHomeSettings;->mCurrentHome:I
    invoke-static {v5}, Lcom/android/settings/DCMHomeSettings;->access$100(Lcom/android/settings/DCMHomeSettings;)I

    move-result v5

    if-ne v5, p1, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    :goto_1
    return-object p2

    :pswitch_0
    iget-object v5, p0, Lcom/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/android/settings/DCMHomeSettings;

    invoke-virtual {v5}, Lcom/android/settings/DCMHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200bb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v5, 0x7f0a1586

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f0a1587

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/android/settings/DCMHomeSettings;

    invoke-virtual {v5}, Lcom/android/settings/DCMHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200bc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v5, 0x7f0a1588

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f0a1589

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/android/settings/DCMHomeSettings;

    invoke-virtual {v5}, Lcom/android/settings/DCMHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200bd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v5, 0x7f0a158a

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f0a158b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/android/settings/DCMHomeSettings;

    iget-object v5, v5, Lcom/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f07004d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz v2, :cond_1

    const v5, 0x7f1005f1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v5, 0x7f1005f2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f1005f4

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/android/settings/DCMHomeSettings;

    # getter for: Lcom/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/DCMHomeSettings;->access$500(Lcom/android/settings/DCMHomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/android/settings/DCMHomeSettings;

    # getter for: Lcom/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/DCMHomeSettings;->access$500(Lcom/android/settings/DCMHomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/android/settings/DCMHomeSettings;

    # getter for: Lcom/android/settings/DCMHomeSettings;->mCurrentHome:I
    invoke-static {v5}, Lcom/android/settings/DCMHomeSettings;->access$100(Lcom/android/settings/DCMHomeSettings;)I

    move-result v5

    if-ne v5, p1, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
