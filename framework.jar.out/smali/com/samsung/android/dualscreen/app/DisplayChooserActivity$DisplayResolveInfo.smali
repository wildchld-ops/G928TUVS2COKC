.class final Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayResolveInfo;
.super Ljava/lang/Object;
.source "DisplayChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/dualscreen/app/DisplayChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayResolveInfo"
.end annotation


# instance fields
.field displayIcon:Landroid/graphics/drawable/Drawable;

.field displayId:I

.field displayLabel:Ljava/lang/CharSequence;

.field ri:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iput-object p2, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayResolveInfo;->displayId:I

    return-void
.end method
