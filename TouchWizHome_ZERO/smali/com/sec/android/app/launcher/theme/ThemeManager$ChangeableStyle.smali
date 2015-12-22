.class public Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/theme/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeableStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$IconBgScope;,
        Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$ChangeableItems;
    }
.end annotation


# instance fields
.field cellX:I

.field cellY:I

.field icon_bg_range:I

.field icon_scale:F

.field key:[Ljava/lang/String;

.field mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/theme/ThemeManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "home_cell_count_x"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "home_cell_count_y"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "icon_bg_range"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "icon_scale_size"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->key:[Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    return-void
.end method


# virtual methods
.method public getCellX()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->cellX:I

    return v0
.end method

.method public getCellY()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->cellY:I

    return v0
.end method

.method public getIconBgScope()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->icon_bg_range:I

    return v0
.end method

.method public getIconScale()F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->icon_scale:F

    return v0
.end method

.method public getKey()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->key:[Ljava/lang/String;

    return-object v0
.end method

.method public getmThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    return-object v0
.end method

.method setTheme()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->key:[Ljava/lang/String;

    sget-object v3, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$ChangeableItems;->GRID_X:Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$ChangeableItems;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$ChangeableItems;->value()I

    move-result v3

    aget-object v2, v2, v3

    sget-object v3, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforIntegerType(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->cellX:I

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->key:[Ljava/lang/String;

    sget-object v3, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$ChangeableItems;->GRID_Y:Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$ChangeableItems;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$ChangeableItems;->value()I

    move-result v3

    aget-object v2, v2, v3

    sget-object v3, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforIntegerType(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->cellY:I

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->key:[Ljava/lang/String;

    sget-object v3, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$ChangeableItems;->ICON_BG_RANGE:Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$ChangeableItems;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$ChangeableItems;->value()I

    move-result v3

    aget-object v2, v2, v3

    sget-object v3, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforIntegerType(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->icon_bg_range:I

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->key:[Ljava/lang/String;

    sget-object v3, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$ChangeableItems;->ICON_SCALE:Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$ChangeableItems;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$ChangeableItems;->value()I

    move-result v3

    aget-object v2, v2, v3

    sget-object v3, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforIntegerType(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x46

    :cond_0
    int-to-float v1, v0

    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->icon_scale:F

    return-void
.end method
