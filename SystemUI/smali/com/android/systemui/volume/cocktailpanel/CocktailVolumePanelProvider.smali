.class public Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanelProvider;
.super Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;
.source "CocktailVolumePanelProvider.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;-><init>()V

    const-string v0, "CocktailVolumePanelProvider"

    iput-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanelProvider;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onDisabled(Landroid/content/Context;)V

    return-void
.end method

.method public onDroped(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;Landroid/view/DragEvent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onDroped(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;Landroid/view/DragEvent;)V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onEnabled(Landroid/content/Context;)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;[I)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;[I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "package"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content"

    const-class v3, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;-><init>(Landroid/os/Bundle;)V

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->build()Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, p3, v2

    invoke-virtual {p2, v2, v1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->updateCocktail(ILcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)V

    return-void
.end method

.method public onVisibilityChanged(Landroid/content/Context;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onVisibilityChanged(Landroid/content/Context;II)V

    return-void
.end method
