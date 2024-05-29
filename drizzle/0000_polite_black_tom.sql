DO $$ BEGIN
 CREATE TYPE "icon" AS ENUM('AArrowDown', 'AArrowUp', 'ALargeSmall', 'Accessibility', 'Activity', 'AirVent', 'Airplay', 'AlarmClock', 'AlarmClockCheck', 'AlarmClockMinus', 'AlarmClockOff', 'AlarmClockPlus', 'AlarmSmoke', 'Album', 'AlignCenter', 'AlignCenterHorizontal', 'AlignCenterVertical', 'AlignEndHorizontal', 'AlignEndVertical', 'AlignHorizontalDistributeCenter', 'AlignHorizontalDistributeEnd', 'AlignHorizontalDistributeStart', 'AlignHorizontalJustifyCenter', 'AlignHorizontalJustifyEnd', 'AlignHorizontalJustifyStart', 'AlignHorizontalSpaceAround', 'AlignHorizontalSpaceBetween', 'AlignJustify', 'AlignLeft', 'AlignRight', 'AlignStartHorizontal', 'AlignStartVertical', 'AlignVerticalDistributeCenter', 'AlignVerticalDistributeEnd', 'AlignVerticalDistributeStart', 'AlignVerticalJustifyCenter', 'AlignVerticalJustifyEnd', 'AlignVerticalJustifyStart', 'AlignVerticalSpaceAround', 'AlignVerticalSpaceBetween', 'Ambulance', 'Ampersand', 'Ampersands', 'Anchor', 'Angry', 'Annoyed', 'Antenna', 'Anvil', 'Aperture', 'AppWindow', 'AppWindowMac', 'Apple', 'Archive', 'ArchiveRestore', 'ArchiveX', 'AreaChart', 'Armchair', 'ArrowBigDown', 'ArrowBigDownDash', 'ArrowBigLeft', 'ArrowBigLeftDash', 'ArrowBigRight', 'ArrowBigRightDash', 'ArrowBigUp', 'ArrowBigUpDash', 'ArrowDown', 'ArrowDown01', 'ArrowDown10', 'ArrowDownAZ', 'ArrowDownFromLine', 'ArrowDownLeft', 'ArrowDownNarrowWide', 'ArrowDownRight', 'ArrowDownToDot', 'ArrowDownToLine', 'ArrowDownUp', 'ArrowDownWideNarrow', 'ArrowDownZA', 'ArrowLeft', 'ArrowLeftFromLine', 'ArrowLeftRight', 'ArrowLeftToLine', 'ArrowRight', 'ArrowRightFromLine', 'ArrowRightLeft', 'ArrowRightToLine', 'ArrowUp', 'ArrowUp01', 'ArrowUp10', 'ArrowUpAZ', 'ArrowUpDown', 'ArrowUpFromDot', 'ArrowUpFromLine', 'ArrowUpLeft', 'ArrowUpNarrowWide', 'ArrowUpRight', 'ArrowUpToLine', 'ArrowUpWideNarrow', 'ArrowUpZA', 'ArrowsUpFromLine', 'Asterisk', 'AtSign', 'Atom', 'AudioLines', 'AudioWaveform', 'Award', 'Axe', 'Axis3d', 'Baby', 'Backpack', 'Badge', 'BadgeAlert', 'BadgeCent', 'BadgeCheck', 'BadgeDollarSign', 'BadgeEuro', 'BadgeHelp', 'BadgeIndianRupee', 'BadgeInfo', 'BadgeJapaneseYen', 'BadgeMinus', 'BadgePercent', 'BadgePlus', 'BadgePoundSterling', 'BadgeRussianRuble', 'BadgeSwissFranc', 'BadgeX', 'BaggageClaim', 'Ban', 'Banana', 'Banknote', 'BarChart', 'BarChart2', 'BarChart3', 'BarChart4', 'BarChartBig', 'BarChartHorizontal', 'BarChartHorizontalBig', 'Barcode', 'Baseline', 'Bath', 'Battery', 'BatteryCharging', 'BatteryFull', 'BatteryLow', 'BatteryMedium', 'BatteryWarning', 'Beaker', 'Bean', 'BeanOff', 'Bed', 'BedDouble', 'BedSingle', 'Beef', 'Beer', 'BeerOff', 'Bell', 'BellDot', 'BellElectric', 'BellMinus', 'BellOff', 'BellPlus', 'BellRing', 'BetweenHorizontalEnd', 'BetweenHorizontalStart', 'BetweenVerticalEnd', 'BetweenVerticalStart', 'Bike', 'Binary', 'Biohazard', 'Bird', 'Bitcoin', 'Blend', 'Blinds', 'Blocks', 'Bluetooth', 'BluetoothConnected', 'BluetoothOff', 'BluetoothSearching', 'Bold', 'Bolt', 'Bomb', 'Bone', 'Book', 'BookA', 'BookAudio', 'BookCheck', 'BookCopy', 'BookDashed', 'BookDown', 'BookHeadphones', 'BookHeart', 'BookImage', 'BookKey', 'BookLock', 'BookMarked', 'BookMinus', 'BookOpen', 'BookOpenCheck', 'BookOpenText', 'BookPlus', 'BookText', 'BookType', 'BookUp', 'BookUp2', 'BookUser', 'BookX', 'Bookmark', 'BookmarkCheck', 'BookmarkMinus', 'BookmarkPlus', 'BookmarkX', 'BoomBox', 'Bot', 'BotMessageSquare', 'BotOff', 'Box', 'BoxSelect', 'Boxes', 'Braces', 'Brackets', 'Brain', 'BrainCircuit', 'BrainCog', 'BrickWall', 'Briefcase', 'BriefcaseBusiness', 'BriefcaseMedical', 'BringToFront', 'Brush', 'Bug', 'BugOff', 'BugPlay', 'Building', 'Building2', 'Bus', 'BusFront', 'Cable', 'CableCar', 'Cake', 'CakeSlice', 'Calculator', 'Calendar', 'CalendarCheck', 'CalendarCheck2', 'CalendarClock', 'CalendarDays', 'CalendarFold', 'CalendarHeart', 'CalendarMinus', 'CalendarMinus2', 'CalendarOff', 'CalendarPlus', 'CalendarPlus2', 'CalendarRange', 'CalendarSearch', 'CalendarX', 'CalendarX2', 'Camera', 'CameraOff', 'CandlestickChart', 'Candy', 'CandyCane', 'CandyOff', 'Cannabis', 'Captions', 'CaptionsOff', 'Car', 'CarFront', 'CarTaxiFront', 'Caravan', 'Carrot', 'CaseLower', 'CaseSensitive', 'CaseUpper', 'CassetteTape', 'Cast', 'Castle', 'Cat', 'Cctv', 'Check', 'CheckCheck', 'ChefHat', 'Cherry', 'ChevronDown', 'ChevronFirst', 'ChevronLast', 'ChevronLeft', 'ChevronRight', 'ChevronUp', 'ChevronsDown', 'ChevronsDownUp', 'ChevronsLeft', 'ChevronsLeftRight', 'ChevronsRight', 'ChevronsRightLeft', 'ChevronsUp', 'ChevronsUpDown', 'Chrome', 'Church', 'Cigarette', 'CigaretteOff', 'Circle', 'CircleAlert', 'CircleArrowDown', 'CircleArrowLeft', 'CircleArrowOutDownLeft', 'CircleArrowOutDownRight', 'CircleArrowOutUpLeft', 'CircleArrowOutUpRight', 'CircleArrowRight', 'CircleArrowUp', 'CircleCheck', 'CircleCheckBig', 'CircleChevronDown', 'CircleChevronLeft', 'CircleChevronRight', 'CircleChevronUp', 'CircleDashed', 'CircleDivide', 'CircleDollarSign', 'CircleDot', 'CircleDotDashed', 'CircleEllipsis', 'CircleEqual', 'CircleFadingPlus', 'CircleGauge', 'CircleHelp', 'CircleMinus', 'CircleOff', 'CircleParking', 'CircleParkingOff', 'CirclePause', 'CirclePercent', 'CirclePlay', 'CirclePlus', 'CirclePower', 'CircleSlash', 'CircleSlash2', 'CircleStop', 'CircleUser', 'CircleUserRound', 'CircleX', 'CircuitBoard', 'Citrus', 'Clapperboard', 'Clipboard', 'ClipboardCheck', 'ClipboardCopy', 'ClipboardList', 'ClipboardMinus', 'ClipboardPaste', 'ClipboardPen', 'ClipboardPenLine', 'ClipboardPlus', 'ClipboardType', 'ClipboardX', 'Clock', 'Clock1', 'Clock10', 'Clock11', 'Clock12', 'Clock2', 'Clock3', 'Clock4', 'Clock5', 'Clock6', 'Clock7', 'Clock8', 'Clock9', 'Cloud', 'CloudCog', 'CloudDownload', 'CloudDrizzle', 'CloudFog', 'CloudHail', 'CloudLightning', 'CloudMoon', 'CloudMoonRain', 'CloudOff', 'CloudRain', 'CloudRainWind', 'CloudSnow', 'CloudSun', 'CloudSunRain', 'CloudUpload', 'Cloudy', 'Clover', 'Club', 'Code', 'CodeXml', 'Codepen', 'Codesandbox', 'Coffee', 'Cog', 'Coins', 'Columns2', 'Columns3', 'Columns4', 'Combine', 'Command', 'Compass', 'Component', 'Computer', 'ConciergeBell', 'Cone', 'Construction', 'Contact', 'ContactRound', 'Container', 'Contrast', 'Cookie', 'CookingPot', 'Copy', 'CopyCheck', 'CopyMinus', 'CopyPlus', 'CopySlash', 'CopyX', 'Copyleft', 'Copyright', 'CornerDownLeft', 'CornerDownRight', 'CornerLeftDown', 'CornerLeftUp', 'CornerRightDown', 'CornerRightUp', 'CornerUpLeft', 'CornerUpRight', 'Cpu', 'CreativeCommons', 'CreditCard', 'Croissant', 'Crop', 'Cross', 'Crosshair', 'Crown', 'Cuboid', 'CupSoda', 'Currency', 'Cylinder', 'Database', 'DatabaseBackup', 'DatabaseZap', 'Delete', 'Dessert', 'Diameter', 'Diamond', 'DiamondPercent', 'Dice1', 'Dice2', 'Dice3', 'Dice4', 'Dice5', 'Dice6', 'Dices', 'Diff', 'Disc', 'Disc2', 'Disc3', 'DiscAlbum', 'Divide', 'Dna', 'DnaOff', 'Dock', 'Dog', 'DollarSign', 'Donut', 'DoorClosed', 'DoorOpen', 'Dot', 'Download', 'DraftingCompass', 'Drama', 'Dribbble', 'Drill', 'Droplet', 'Droplets', 'Drum', 'Drumstick', 'Dumbbell', 'Ear', 'EarOff', 'Earth', 'EarthLock', 'Eclipse', 'Egg', 'EggFried', 'EggOff', 'Ellipsis', 'EllipsisVertical', 'Equal', 'EqualNot', 'Eraser', 'Euro', 'Expand', 'ExternalLink', 'Eye', 'EyeOff', 'Facebook', 'Factory', 'Fan', 'FastForward', 'Feather', 'Fence', 'FerrisWheel', 'Figma', 'File', 'FileArchive', 'FileAudio', 'FileAudio2', 'FileAxis3d', 'FileBadge', 'FileBadge2', 'FileBarChart', 'FileBarChart2', 'FileBox', 'FileCheck', 'FileCheck2', 'FileClock', 'FileCode', 'FileCode2', 'FileCog', 'FileDiff', 'FileDigit', 'FileDown', 'FileHeart', 'FileImage', 'FileInput', 'FileJson', 'FileJson2', 'FileKey', 'FileKey2', 'FileLineChart', 'FileLock', 'FileLock2', 'FileMinus', 'FileMinus2', 'FileMusic', 'FileOutput', 'FilePen', 'FilePenLine', 'FilePieChart', 'FilePlus', 'FilePlus2', 'FileQuestion', 'FileScan', 'FileSearch', 'FileSearch2', 'FileSliders', 'FileSpreadsheet', 'FileStack', 'FileSymlink', 'FileTerminal', 'FileText', 'FileType', 'FileType2', 'FileUp', 'FileVideo', 'FileVideo2', 'FileVolume', 'FileVolume2', 'FileWarning', 'FileX', 'FileX2', 'Files', 'Film', 'Filter', 'FilterX', 'Fingerprint', 'FireExtinguisher', 'Fish', 'FishOff', 'FishSymbol', 'Flag', 'FlagOff', 'FlagTriangleLeft', 'FlagTriangleRight', 'Flame', 'FlameKindling', 'Flashlight', 'FlashlightOff', 'FlaskConical', 'FlaskConicalOff', 'FlaskRound', 'FlipHorizontal', 'FlipHorizontal2', 'FlipVertical', 'FlipVertical2', 'Flower', 'Flower2', 'Focus', 'FoldHorizontal', 'FoldVertical', 'Folder', 'FolderArchive', 'FolderCheck', 'FolderClock', 'FolderClosed', 'FolderCog', 'FolderDot', 'FolderDown', 'FolderGit', 'FolderGit2', 'FolderHeart', 'FolderInput', 'FolderKanban', 'FolderKey', 'FolderLock', 'FolderMinus', 'FolderOpen', 'FolderOpenDot', 'FolderOutput', 'FolderPen', 'FolderPlus', 'FolderRoot', 'FolderSearch', 'FolderSearch2', 'FolderSymlink', 'FolderSync', 'FolderTree', 'FolderUp', 'FolderX', 'Folders', 'Footprints', 'Forklift', 'Forward', 'Frame', 'Framer', 'Frown', 'Fuel', 'Fullscreen', 'GalleryHorizontal', 'GalleryHorizontalEnd', 'GalleryThumbnails', 'GalleryVertical', 'GalleryVerticalEnd', 'Gamepad', 'Gamepad2', 'GanttChart', 'Gauge', 'Gavel', 'Gem', 'Ghost', 'Gift', 'GitBranch', 'GitBranchPlus', 'GitCommitHorizontal', 'GitCommitVertical', 'GitCompare', 'GitCompareArrows', 'GitFork', 'GitGraph', 'GitMerge', 'GitPullRequest', 'GitPullRequestArrow', 'GitPullRequestClosed', 'GitPullRequestCreate', 'GitPullRequestCreateArrow', 'GitPullRequestDraft', 'Github', 'Gitlab', 'GlassWater', 'Glasses', 'Globe', 'GlobeLock', 'Goal', 'Grab', 'GraduationCap', 'Grape', 'Grid2x2', 'Grid3x3', 'Grip', 'GripHorizontal', 'GripVertical', 'Group', 'Guitar', 'Ham', 'Hammer', 'Hand', 'HandCoins', 'HandHeart', 'HandHelping', 'HandMetal', 'HandPlatter', 'Handshake', 'HardDrive', 'HardDriveDownload', 'HardDriveUpload', 'HardHat', 'Hash', 'Haze', 'HdmiPort', 'Heading', 'Heading1', 'Heading2', 'Heading3', 'Heading4', 'Heading5', 'Heading6', 'Headphones', 'Headset', 'Heart', 'HeartCrack', 'HeartHandshake', 'HeartOff', 'HeartPulse', 'Heater', 'Hexagon', 'Highlighter', 'History', 'Home', 'Hop', 'HopOff', 'Hospital', 'Hotel', 'Hourglass', 'IceCreamBowl', 'IceCreamCone', 'Image', 'ImageDown', 'ImageMinus', 'ImageOff', 'ImagePlay', 'ImagePlus', 'ImageUp', 'Images', 'Import', 'Inbox', 'IndentDecrease', 'IndentIncrease', 'IndianRupee', 'Infinity', 'Info', 'InspectionPanel', 'Instagram', 'Italic', 'IterationCcw', 'IterationCw', 'JapaneseYen', 'Joystick', 'Kanban', 'Key', 'KeyRound', 'KeySquare', 'Keyboard', 'KeyboardMusic', 'KeyboardOff', 'Lamp', 'LampCeiling', 'LampDesk', 'LampFloor', 'LampWallDown', 'LampWallUp', 'LandPlot', 'Landmark', 'Languages', 'Laptop', 'LaptopMinimal', 'Lasso', 'LassoSelect', 'Laugh', 'Layers', 'Layers2', 'Layers3', 'LayoutDashboard', 'LayoutGrid', 'LayoutList', 'LayoutPanelLeft', 'LayoutPanelTop', 'LayoutTemplate', 'Leaf', 'LeafyGreen', 'Library', 'LibraryBig', 'LifeBuoy', 'Ligature', 'Lightbulb', 'LightbulbOff', 'LineChart', 'Link', 'Link2', 'Link2Off', 'Linkedin', 'List', 'ListChecks', 'ListCollapse', 'ListEnd', 'ListFilter', 'ListMinus', 'ListMusic', 'ListOrdered', 'ListPlus', 'ListRestart', 'ListStart', 'ListTodo', 'ListTree', 'ListVideo', 'ListX', 'Loader', 'LoaderCircle', 'Locate', 'LocateFixed', 'LocateOff', 'Lock', 'LockKeyhole', 'LockKeyholeOpen', 'LockOpen', 'LogIn', 'LogOut', 'Lollipop', 'Luggage', 'Magnet', 'Mail', 'MailCheck', 'MailMinus', 'MailOpen', 'MailPlus', 'MailQuestion', 'MailSearch', 'MailWarning', 'MailX', 'Mailbox', 'Mails', 'Map', 'MapPin', 'MapPinOff', 'MapPinned', 'Martini', 'Maximize', 'Maximize2', 'Medal', 'Megaphone', 'MegaphoneOff', 'Meh', 'MemoryStick', 'Menu', 'Merge', 'MessageCircle', 'MessageCircleCode', 'MessageCircleDashed', 'MessageCircleHeart', 'MessageCircleMore', 'MessageCircleOff', 'MessageCirclePlus', 'MessageCircleQuestion', 'MessageCircleReply', 'MessageCircleWarning', 'MessageCircleX', 'MessageSquare', 'MessageSquareCode', 'MessageSquareDashed', 'MessageSquareDiff', 'MessageSquareDot', 'MessageSquareHeart', 'MessageSquareMore', 'MessageSquareOff', 'MessageSquarePlus', 'MessageSquareQuote', 'MessageSquareReply', 'MessageSquareShare', 'MessageSquareText', 'MessageSquareWarning', 'MessageSquareX', 'MessagesSquare', 'Mic', 'MicOff', 'MicVocal', 'Microscope', 'Microwave', 'Milestone', 'Milk', 'MilkOff', 'Minimize', 'Minimize2', 'Minus', 'Monitor', 'MonitorCheck', 'MonitorDot', 'MonitorDown', 'MonitorOff', 'MonitorPause', 'MonitorPlay', 'MonitorSmartphone', 'MonitorSpeaker', 'MonitorStop', 'MonitorUp', 'MonitorX', 'Moon', 'MoonStar', 'Mountain', 'MountainSnow', 'Mouse', 'MouseOff', 'MousePointer', 'MousePointer2', 'MousePointerClick', 'Move', 'Move3d', 'MoveDiagonal', 'MoveDiagonal2', 'MoveDown', 'MoveDownLeft', 'MoveDownRight', 'MoveHorizontal', 'MoveLeft', 'MoveRight', 'MoveUp', 'MoveUpLeft', 'MoveUpRight', 'MoveVertical', 'Music', 'Music2', 'Music3', 'Music4', 'Navigation', 'Navigation2', 'Navigation2Off', 'NavigationOff', 'Network', 'Newspaper', 'Nfc', 'Notebook', 'NotebookPen', 'NotebookTabs', 'NotebookText', 'NotepadText', 'NotepadTextDashed', 'Nut', 'NutOff', 'Octagon', 'OctagonAlert', 'OctagonPause', 'OctagonX', 'Option', 'Orbit', 'Package', 'Package2', 'PackageCheck', 'PackageMinus', 'PackageOpen', 'PackagePlus', 'PackageSearch', 'PackageX', 'PaintBucket', 'PaintRoller', 'Paintbrush', 'Paintbrush2', 'Palette', 'PanelBottom', 'PanelBottomClose', 'PanelBottomDashed', 'PanelBottomOpen', 'PanelLeft', 'PanelLeftClose', 'PanelLeftDashed', 'PanelLeftOpen', 'PanelRight', 'PanelRightClose', 'PanelRightDashed', 'PanelRightOpen', 'PanelTop', 'PanelTopClose', 'PanelTopDashed', 'PanelTopOpen', 'PanelsLeftBottom', 'PanelsRightBottom', 'PanelsTopLeft', 'Paperclip', 'Parentheses', 'ParkingMeter', 'PartyPopper', 'Pause', 'PawPrint', 'PcCase', 'Pen', 'PenLine', 'PenTool', 'Pencil', 'PencilLine', 'PencilRuler', 'Pentagon', 'Percent', 'PersonStanding', 'Phone', 'PhoneCall', 'PhoneForwarded', 'PhoneIncoming', 'PhoneMissed', 'PhoneOff', 'PhoneOutgoing', 'Pi', 'Piano', 'Pickaxe', 'PictureInPicture', 'PictureInPicture2', 'PieChart', 'PiggyBank', 'Pilcrow', 'PilcrowLeft', 'PilcrowRight', 'Pill', 'Pin', 'PinOff', 'Pipette', 'Pizza', 'Plane', 'PlaneLanding', 'PlaneTakeoff', 'Play', 'Plug', 'Plug2', 'PlugZap', 'PlugZap2', 'Plus', 'Pocket', 'PocketKnife', 'Podcast', 'Pointer', 'PointerOff', 'Popcorn', 'Popsicle', 'PoundSterling', 'Power', 'PowerOff', 'Presentation', 'Printer', 'Projector', 'Proportions', 'Puzzle', 'Pyramid', 'QrCode', 'Quote', 'Rabbit', 'Radar', 'Radiation', 'Radical', 'Radio', 'RadioReceiver', 'RadioTower', 'Radius', 'RailSymbol', 'Rainbow', 'Rat', 'Ratio', 'Receipt', 'ReceiptCent', 'ReceiptEuro', 'ReceiptIndianRupee', 'ReceiptJapaneseYen', 'ReceiptPoundSterling', 'ReceiptRussianRuble', 'ReceiptSwissFranc', 'ReceiptText', 'RectangleEllipsis', 'RectangleHorizontal', 'RectangleVertical', 'Recycle', 'Redo', 'Redo2', 'RedoDot', 'RefreshCcw', 'RefreshCcwDot', 'RefreshCw', 'RefreshCwOff', 'Refrigerator', 'Regex', 'RemoveFormatting', 'Repeat', 'Repeat1', 'Repeat2', 'Replace', 'ReplaceAll', 'Reply', 'ReplyAll', 'Rewind', 'Ribbon', 'Rocket', 'RockingChair', 'RollerCoaster', 'Rotate3d', 'RotateCcw', 'RotateCcwSquare', 'RotateCw', 'RotateCwSquare', 'Route', 'RouteOff', 'Router', 'Rows2', 'Rows3', 'Rows4', 'Rss', 'Ruler', 'RussianRuble', 'Sailboat', 'Salad', 'Sandwich', 'Satellite', 'SatelliteDish', 'Save', 'SaveAll', 'Scale', 'Scale3d', 'Scaling', 'Scan', 'ScanBarcode', 'ScanEye', 'ScanFace', 'ScanLine', 'ScanSearch', 'ScanText', 'ScatterChart', 'School', 'Scissors', 'ScissorsLineDashed', 'ScreenShare', 'ScreenShareOff', 'Scroll', 'ScrollText', 'Search', 'SearchCheck', 'SearchCode', 'SearchSlash', 'SearchX', 'Send', 'SendHorizontal', 'SendToBack', 'SeparatorHorizontal', 'SeparatorVertical', 'Server', 'ServerCog', 'ServerCrash', 'ServerOff', 'Settings', 'Settings2', 'Shapes', 'Share', 'Share2', 'Sheet', 'Shell', 'Shield', 'ShieldAlert', 'ShieldBan', 'ShieldCheck', 'ShieldEllipsis', 'ShieldHalf', 'ShieldMinus', 'ShieldOff', 'ShieldPlus', 'ShieldQuestion', 'ShieldX', 'Ship', 'ShipWheel', 'Shirt', 'ShoppingBag', 'ShoppingBasket', 'ShoppingCart', 'Shovel', 'ShowerHead', 'Shrink', 'Shrub', 'Shuffle', 'Sigma', 'Signal', 'SignalHigh', 'SignalLow', 'SignalMedium', 'SignalZero', 'Signpost', 'SignpostBig', 'Siren', 'SkipBack', 'SkipForward', 'Skull', 'Slack', 'Slash', 'Slice', 'SlidersHorizontal', 'SlidersVertical', 'Smartphone', 'SmartphoneCharging', 'SmartphoneNfc', 'Smile', 'SmilePlus', 'Snail', 'Snowflake', 'Sofa', 'Soup', 'Space', 'Spade', 'Sparkle', 'Sparkles', 'Speaker', 'Speech', 'SpellCheck', 'SpellCheck2', 'Spline', 'Split', 'SprayCan', 'Sprout', 'Square', 'SquareActivity', 'SquareArrowDown', 'SquareArrowDownLeft', 'SquareArrowDownRight', 'SquareArrowLeft', 'SquareArrowOutDownLeft', 'SquareArrowOutDownRight', 'SquareArrowOutUpLeft', 'SquareArrowOutUpRight', 'SquareArrowRight', 'SquareArrowUp', 'SquareArrowUpLeft', 'SquareArrowUpRight', 'SquareAsterisk', 'SquareBottomDashedScissors', 'SquareCheck', 'SquareCheckBig', 'SquareChevronDown', 'SquareChevronLeft', 'SquareChevronRight', 'SquareChevronUp', 'SquareCode', 'SquareDashedBottom', 'SquareDashedBottomCode', 'SquareDashedKanban', 'SquareDashedMousePointer', 'SquareDivide', 'SquareDot', 'SquareEqual', 'SquareFunction', 'SquareGanttChart', 'SquareKanban', 'SquareLibrary', 'SquareM', 'SquareMenu', 'SquareMinus', 'SquareMousePointer', 'SquareParking', 'SquareParkingOff', 'SquarePen', 'SquarePercent', 'SquarePi', 'SquarePilcrow', 'SquarePlay', 'SquarePlus', 'SquarePower', 'SquareRadical', 'SquareScissors', 'SquareSigma', 'SquareSlash', 'SquareSplitHorizontal', 'SquareSplitVertical', 'SquareStack', 'SquareTerminal', 'SquareUser', 'SquareUserRound', 'SquareX', 'Squircle', 'Squirrel', 'Stamp', 'Star', 'StarHalf', 'StarOff', 'StepBack', 'StepForward', 'Stethoscope', 'Sticker', 'StickyNote', 'Store', 'StretchHorizontal', 'StretchVertical', 'Strikethrough', 'Subscript', 'Sun', 'SunDim', 'SunMedium', 'SunMoon', 'SunSnow', 'Sunrise', 'Sunset', 'Superscript', 'SwatchBook', 'SwissFranc', 'SwitchCamera', 'Sword', 'Swords', 'Syringe', 'Table', 'Table2', 'TableCellsMerge', 'TableCellsSplit', 'TableColumnsSplit', 'TableProperties', 'TableRowsSplit', 'Tablet', 'TabletSmartphone', 'Tablets', 'Tag', 'Tags', 'Tally1', 'Tally2', 'Tally3', 'Tally4', 'Tally5', 'Tangent', 'Target', 'Telescope', 'Tent', 'TentTree', 'Terminal', 'TestTube', 'TestTubeDiagonal', 'TestTubes', 'Text', 'TextCursor', 'TextCursorInput', 'TextQuote', 'TextSearch', 'TextSelect', 'Theater', 'Thermometer', 'ThermometerSnowflake', 'ThermometerSun', 'ThumbsDown', 'ThumbsUp', 'Ticket', 'TicketCheck', 'TicketMinus', 'TicketPercent', 'TicketPlus', 'TicketSlash', 'TicketX', 'Timer', 'TimerOff', 'TimerReset', 'ToggleLeft', 'ToggleRight', 'Tornado', 'Torus', 'Touchpad', 'TouchpadOff', 'TowerControl', 'ToyBrick', 'Tractor', 'TrafficCone', 'TrainFront', 'TrainFrontTunnel', 'TrainTrack', 'TramFront', 'Trash', 'Trash2', 'TreeDeciduous', 'TreePalm', 'TreePine', 'Trees', 'Trello', 'TrendingDown', 'TrendingUp', 'Triangle', 'TriangleAlert', 'TriangleRight', 'Trophy', 'Truck', 'Turtle', 'Tv', 'Tv2', 'Twitch', 'Twitter', 'Type', 'Umbrella', 'UmbrellaOff', 'Underline', 'Undo', 'Undo2', 'UndoDot', 'UnfoldHorizontal', 'UnfoldVertical', 'Ungroup', 'University', 'Unlink', 'Unlink2', 'Unplug', 'Upload', 'Usb', 'User', 'UserCheck', 'UserCog', 'UserMinus', 'UserPlus', 'UserRound', 'UserRoundCheck', 'UserRoundCog', 'UserRoundMinus', 'UserRoundPlus', 'UserRoundSearch', 'UserRoundX', 'UserSearch', 'UserX', 'Users', 'UsersRound', 'Utensils', 'UtensilsCrossed', 'UtilityPole', 'Variable', 'Vault', 'Vegan', 'VenetianMask', 'Vibrate', 'VibrateOff', 'Video', 'VideoOff', 'Videotape', 'View', 'Voicemail', 'Volume', 'Volume1', 'Volume2', 'VolumeX', 'Vote', 'Wallet', 'WalletCards', 'WalletMinimal', 'Wallpaper', 'Wand', 'WandSparkles', 'Warehouse', 'WashingMachine', 'Watch', 'Waves', 'Waypoints', 'Webcam', 'Webhook', 'WebhookOff', 'Weight', 'Wheat', 'WheatOff', 'WholeWord', 'Wifi', 'WifiOff', 'Wind', 'Wine', 'WineOff', 'Workflow', 'Worm', 'WrapText', 'Wrench', 'X', 'Youtube', 'Zap', 'ZapOff', 'ZoomIn', 'ZoomOut');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "fullstack_template_user" (
	"id" varchar(256) PRIMARY KEY NOT NULL,
	"email" varchar(256) NOT NULL,
	"first_name" varchar(256) NOT NULL,
	"last_name" varchar(256) NOT NULL,
	"created_at" timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"updated_at" timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "fullstack_template_yeet" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"user_id" varchar NOT NULL,
	"text" varchar(256) NOT NULL,
	"icon" "icon" NOT NULL,
	"public" boolean DEFAULT false NOT NULL,
	"created_at" timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL
);
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "fullstack_template_yeet" ADD CONSTRAINT "fullstack_template_yeet_user_id_fullstack_template_user_id_fk" FOREIGN KEY ("user_id") REFERENCES "fullstack_template_user"("id") ON DELETE cascade ON UPDATE cascade;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
