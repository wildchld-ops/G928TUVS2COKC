.class Lcom/android/settings/sim/SimSettings$SimPreference$SelectColorAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings$SimPreference$SelectColorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field label:Landroid/widget/TextView;

.field swatch:Landroid/graphics/drawable/ShapeDrawable;

.field final synthetic this$2:Lcom/android/settings/sim/SimSettings$SimPreference$SelectColorAdapter;


# direct methods
.method private constructor <init>(Lcom/android/settings/sim/SimSettings$SimPreference$SelectColorAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$SimPreference$SelectColorAdapter$ViewHolder;->this$2:Lcom/android/settings/sim/SimSettings$SimPreference$SelectColorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/sim/SimSettings$SimPreference$SelectColorAdapter;Lcom/android/settings/sim/SimSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings$SimPreference$SelectColorAdapter$ViewHolder;-><init>(Lcom/android/settings/sim/SimSettings$SimPreference$SelectColorAdapter;)V

    return-void
.end method
