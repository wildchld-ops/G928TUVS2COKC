.class final Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DisplayChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/dualscreen/app/DisplayChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayListAdapter"
.end annotation


# instance fields
.field private final mBaseResolveInfo:Landroid/content/pm/ResolveInfo;

.field private final mCallerDisplayId:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mIntent:Landroid/content/Intent;

.field private final mLaunchedFromUid:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/dualscreen/app/DisplayChooserActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/dualscreen/app/DisplayChooserActivity;Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;II)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->this$0:Lcom/samsung/android/dualscreen/app/DisplayChooserActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iput-object p4, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->mBaseResolveInfo:Landroid/content/pm/ResolveInfo;

    iput p5, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->mLaunchedFromUid:I

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput p6, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->mCallerDisplayId:I

    invoke-direct {p0}, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->rebuildList()V

    return-void
.end method

.method private final bindView(Landroid/view/View;Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayResolveInfo;)V
    .locals 4

    const v2, 0x1020014

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1020006

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p2, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->this$0:Lcom/samsung/android/dualscreen/app/DisplayChooserActivity;

    iget-object v3, p2, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2, v3}, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p2, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v2, p2, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private rebuildList()V
    .locals 13

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->mList:Ljava/util/List;

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v4

    const/4 v3, 0x0

    iget-object v9, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.MAIN"

    if-ne v9, v10, :cond_1

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v0

    array-length v7, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_4

    aget v2, v0, v5

    if-nez v6, :cond_2

    invoke-static {v2}, Lcom/samsung/android/dualscreen/DualScreenUtils;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    if-ne v9, v10, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v6, v8

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v1

    const-string v9, "DisplayChooserActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "rebuildList() : displayId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : display="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_3
    const-string v9, "DisplayChooserActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "rebuildList() : displayName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v2, :pswitch_data_0

    :goto_4
    :pswitch_0
    if-eqz v3, :cond_0

    iget-object v9, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->mList:Ljava/util/List;

    new-instance v10, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayResolveInfo;

    iget-object v11, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->mBaseResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v3, v8, v12}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-direct {v10, v11, v12, v2}, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;I)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "display["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    new-instance v3, Ljava/lang/String;

    const-string v9, "MAIN Screen"

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_2
    new-instance v3, Ljava/lang/String;

    const-string v9, "SUB Screen"

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_3
    new-instance v3, Ljava/lang/String;

    const-string v9, "VIRTUAL(Expanded) Screen"

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_4
    new-instance v3, Ljava/lang/String;

    const-string v9, "EXTERNAL Screen"

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x1090052

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->this$0:Lcom/samsung/android/dualscreen/app/DisplayChooserActivity;

    # getter for: Lcom/samsung/android/dualscreen/app/DisplayChooserActivity;->mIconSize:I
    invoke-static {v3}, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity;->access$000(Lcom/samsung/android/dualscreen/app/DisplayChooserActivity;)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayResolveInfo;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->bindView(Landroid/view/View;Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayResolveInfo;)V

    return-object v2

    :cond_0
    move-object v2, p2

    goto :goto_0
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->mList:Ljava/util/List;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayResolveInfo;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->mIntent:Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v3, 0x3000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "DisplayChooserActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resolveInfoForPosition() : mCallerDisplayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->mCallerDisplayId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " targetDisplayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayResolveInfo;->displayId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v1, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayResolveInfo;->displayId:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v2}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v3, v4}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->setScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    :goto_1
    iget v3, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->mCallerDisplayId:I

    iget v4, v1, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayResolveInfo;->displayId:I

    if-eq v3, v4, :cond_1

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    iget-object v3, v1, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_1
    invoke-virtual {v2}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v3, v4}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->setScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v2}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v3, v4}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->setScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v2}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/dualscreen/DualScreen;->EXTERNAL:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v3, v4}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->setScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayResolveInfo;

    iget-object v0, v0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method
