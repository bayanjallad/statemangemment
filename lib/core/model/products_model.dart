
import 'dart:convert';

import 'package:homewrksta/core/model/handilling.dart';

class ProductModel extends ResultModel {
    final int id;
    final String name;
    final String description;
    final double price;
    final String image;
    final double rating;
    final String brand;
    final String color;
    final String connectivity;
    final bool wireless;
    final String compatibility;
    final String weight;
    final String resolution;
    final String sensor;
    final String screenSize;
    final String storage;
    final String ram;
    final String display;
    final bool heartRateMonitor;
    final bool waterproof;
    final int gamesIncluded;
    final String outputPower;
    final String suctionPower;
    final String batteryLife;
    final bool mappingTechnology;
    final String storageCapacity;
    final String productModelInterface;
    final String maxSpeed;
    final String range;
    final String weightCapacity;
    final String power;
    final String speeds;
    final String dpiRange;
    final int buttons;
    final int inclineLevels;
    final bool foldable;
    final bool voiceControl;
    final String capacity;
    final String solarPanelPower;
    final String material;
    final String thickness;
    final List<String> brushingModes;
    final bool timer;
    final List<String> plantsIncluded;
    final String potMaterial;
    final String potColor;
    final String videoResolution;
    final String fieldOfView;
    final bool adjustableHeight;
    final String maxHeight;
    final List<String> cookingModes;
    final int numberOfCameras;
    final bool nightVision;
    final int piecesIncluded;
    final List<String> levelsOfResistance;
    final bool lumbarSupport;
    final List<String> toolsIncluded;
    final int numberOfLights;
    final String lightColor;
    final String size;
    final String activeArea;
    final int penPressureLevels;
    final String brightness;
    final List<String> attachments;
    final bool adjustableLength;
    final List<String> compatibleDevices;
    final List<String> colorOptions;
    final String wirelessChargingStandard;
    final List<String> componentsIncluded;
    final List<String> activitiesTracked;

    ProductModel({
        required this.id,
        required this.name,
        required this.description,
        required this.price,
        required this.image,
        required this.rating,
        required this.brand,
        required this.color,
        required this.connectivity,
        required this.wireless,
        required this.compatibility,
        required this.weight,
        required this.resolution,
        required this.sensor,
        required this.screenSize,
        required this.storage,
        required this.ram,
        required this.display,
        required this.heartRateMonitor,
        required this.waterproof,
        required this.gamesIncluded,
        required this.outputPower,
        required this.suctionPower,
        required this.batteryLife,
        required this.mappingTechnology,
        required this.storageCapacity,
        required this.productModelInterface,
        required this.maxSpeed,
        required this.range,
        required this.weightCapacity,
        required this.power,
        required this.speeds,
        required this.dpiRange,
        required this.buttons,
        required this.inclineLevels,
        required this.foldable,
        required this.voiceControl,
        required this.capacity,
        required this.solarPanelPower,
        required this.material,
        required this.thickness,
        required this.brushingModes,
        required this.timer,
        required this.plantsIncluded,
        required this.potMaterial,
        required this.potColor,
        required this.videoResolution,
        required this.fieldOfView,
        required this.adjustableHeight,
        required this.maxHeight,
        required this.cookingModes,
        required this.numberOfCameras,
        required this.nightVision,
        required this.piecesIncluded,
        required this.levelsOfResistance,
        required this.lumbarSupport,
        required this.toolsIncluded,
        required this.numberOfLights,
        required this.lightColor,
        required this.size,
        required this.activeArea,
        required this.penPressureLevels,
        required this.brightness,
        required this.attachments,
        required this.adjustableLength,
        required this.compatibleDevices,
        required this.colorOptions,
        required this.wirelessChargingStandard,
        required this.componentsIncluded,
        required this.activitiesTracked,
    });

    ProductModel copyWith({
        int? id,
        String? name,
        String? description,
        double? price,
        String? image,
        double? rating,
        String? brand,
        String? color,
        String? connectivity,
        bool? wireless,
        String? compatibility,
        String? weight,
        String? resolution,
        String? sensor,
        String? screenSize,
        String? storage,
        String? ram,
        String? display,
        bool? heartRateMonitor,
        bool? waterproof,
        int? gamesIncluded,
        String? outputPower,
        String? suctionPower,
        String? batteryLife,
        bool? mappingTechnology,
        String? storageCapacity,
        String? productModelInterface,
        String? maxSpeed,
        String? range,
        String? weightCapacity,
        String? power,
        String? speeds,
        String? dpiRange,
        int? buttons,
        int? inclineLevels,
        bool? foldable,
        bool? voiceControl,
        String? capacity,
        String? solarPanelPower,
        String? material,
        String? thickness,
        List<String>? brushingModes,
        bool? timer,
        List<String>? plantsIncluded,
        String? potMaterial,
        String? potColor,
        String? videoResolution,
        String? fieldOfView,
        bool? adjustableHeight,
        String? maxHeight,
        List<String>? cookingModes,
        int? numberOfCameras,
        bool? nightVision,
        int? piecesIncluded,
        List<String>? levelsOfResistance,
        bool? lumbarSupport,
        List<String>? toolsIncluded,
        int? numberOfLights,
        String? lightColor,
        String? size,
        String? activeArea,
        int? penPressureLevels,
        String? brightness,
        List<String>? attachments,
        bool? adjustableLength,
        List<String>? compatibleDevices,
        List<String>? colorOptions,
        String? wirelessChargingStandard,
        List<String>? componentsIncluded,
        List<String>? activitiesTracked,
    }) => 
        ProductModel(
            id: id ?? this.id,
            name: name ?? this.name,
            description: description ?? this.description,
            price: price ?? this.price,
            image: image ?? this.image,
            rating: rating ?? this.rating,
            brand: brand ?? this.brand,
            color: color ?? this.color,
            connectivity: connectivity ?? this.connectivity,
            wireless: wireless ?? this.wireless,
            compatibility: compatibility ?? this.compatibility,
            weight: weight ?? this.weight,
            resolution: resolution ?? this.resolution,
            sensor: sensor ?? this.sensor,
            screenSize: screenSize ?? this.screenSize,
            storage: storage ?? this.storage,
            ram: ram ?? this.ram,
            display: display ?? this.display,
            heartRateMonitor: heartRateMonitor ?? this.heartRateMonitor,
            waterproof: waterproof ?? this.waterproof,
            gamesIncluded: gamesIncluded ?? this.gamesIncluded,
            outputPower: outputPower ?? this.outputPower,
            suctionPower: suctionPower ?? this.suctionPower,
            batteryLife: batteryLife ?? this.batteryLife,
            mappingTechnology: mappingTechnology ?? this.mappingTechnology,
            storageCapacity: storageCapacity ?? this.storageCapacity,
            productModelInterface: productModelInterface ?? this.productModelInterface,
            maxSpeed: maxSpeed ?? this.maxSpeed,
            range: range ?? this.range,
            weightCapacity: weightCapacity ?? this.weightCapacity,
            power: power ?? this.power,
            speeds: speeds ?? this.speeds,
            dpiRange: dpiRange ?? this.dpiRange,
            buttons: buttons ?? this.buttons,
            inclineLevels: inclineLevels ?? this.inclineLevels,
            foldable: foldable ?? this.foldable,
            voiceControl: voiceControl ?? this.voiceControl,
            capacity: capacity ?? this.capacity,
            solarPanelPower: solarPanelPower ?? this.solarPanelPower,
            material: material ?? this.material,
            thickness: thickness ?? this.thickness,
            brushingModes: brushingModes ?? this.brushingModes,
            timer: timer ?? this.timer,
            plantsIncluded: plantsIncluded ?? this.plantsIncluded,
            potMaterial: potMaterial ?? this.potMaterial,
            potColor: potColor ?? this.potColor,
            videoResolution: videoResolution ?? this.videoResolution,
            fieldOfView: fieldOfView ?? this.fieldOfView,
            adjustableHeight: adjustableHeight ?? this.adjustableHeight,
            maxHeight: maxHeight ?? this.maxHeight,
            cookingModes: cookingModes ?? this.cookingModes,
            numberOfCameras: numberOfCameras ?? this.numberOfCameras,
            nightVision: nightVision ?? this.nightVision,
            piecesIncluded: piecesIncluded ?? this.piecesIncluded,
            levelsOfResistance: levelsOfResistance ?? this.levelsOfResistance,
            lumbarSupport: lumbarSupport ?? this.lumbarSupport,
            toolsIncluded: toolsIncluded ?? this.toolsIncluded,
            numberOfLights: numberOfLights ?? this.numberOfLights,
            lightColor: lightColor ?? this.lightColor,
            size: size ?? this.size,
            activeArea: activeArea ?? this.activeArea,
            penPressureLevels: penPressureLevels ?? this.penPressureLevels,
            brightness: brightness ?? this.brightness,
            attachments: attachments ?? this.attachments,
            adjustableLength: adjustableLength ?? this.adjustableLength,
            compatibleDevices: compatibleDevices ?? this.compatibleDevices,
            colorOptions: colorOptions ?? this.colorOptions,
            wirelessChargingStandard: wirelessChargingStandard ?? this.wirelessChargingStandard,
            componentsIncluded: componentsIncluded ?? this.componentsIncluded,
            activitiesTracked: activitiesTracked ?? this.activitiesTracked,
        );

    factory ProductModel.fromRawJson(String str) => ProductModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"]?.toDouble(),
        image: json["image"],
        rating: json["rating"]?.toDouble(),
        brand: json["brand"],
        color: json["color"],
        connectivity: json["connectivity"],
        wireless: json["wireless"],
        compatibility: json["compatibility"],
        weight: json["weight"],
        resolution: json["resolution"],
        sensor: json["sensor"],
        screenSize: json["screen_size"],
        storage: json["storage"],
        ram: json["ram"],
        display: json["display"],
        heartRateMonitor: json["heart_rate_monitor"],
        waterproof: json["waterproof"],
        gamesIncluded: json["games_included"],
        outputPower: json["output_power"],
        suctionPower: json["suction_power"],
        batteryLife: json["battery_life"],
        mappingTechnology: json["mapping_technology"],
        storageCapacity: json["storage_capacity"],
        productModelInterface: json["interface"],
        maxSpeed: json["max_speed"],
        range: json["range"],
        weightCapacity: json["weight_capacity"],
        power: json["power"],
        speeds: json["speeds"],
        dpiRange: json["dpi_range"],
        buttons: json["buttons"],
        inclineLevels: json["incline_levels"],
        foldable: json["foldable"],
        voiceControl: json["voice_control"],
        capacity: json["capacity"],
        solarPanelPower: json["solar_panel_power"],
        material: json["material"],
        thickness: json["thickness"],
        brushingModes: List<String>.from(json["brushing_modes"].map((x) => x)),
        timer: json["timer"],
        plantsIncluded: List<String>.from(json["plants_included"].map((x) => x)),
        potMaterial: json["pot_material"],
        potColor: json["pot_color"],
        videoResolution: json["video_resolution"],
        fieldOfView: json["field_of_view"],
        adjustableHeight: json["adjustable_height"],
        maxHeight: json["max_height"],
        cookingModes: List<String>.from(json["cooking_modes"].map((x) => x)),
        numberOfCameras: json["number_of_cameras"],
        nightVision: json["night_vision"],
        piecesIncluded: json["pieces_included"],
        levelsOfResistance: List<String>.from(json["levels_of_resistance"].map((x) => x)),
        lumbarSupport: json["lumbar_support"],
        toolsIncluded: List<String>.from(json["tools_included"].map((x) => x)),
        numberOfLights: json["number_of_lights"],
        lightColor: json["light_color"],
        size: json["size"],
        activeArea: json["active_area"],
        penPressureLevels: json["pen_pressure_levels"],
        brightness: json["brightness"],
        attachments: List<String>.from(json["attachments"].map((x) => x)),
        adjustableLength: json["adjustable_length"],
        compatibleDevices: List<String>.from(json["compatible_devices"].map((x) => x)),
        colorOptions: List<String>.from(json["color_options"].map((x) => x)),
        wirelessChargingStandard: json["wireless_charging_standard"],
        componentsIncluded: List<String>.from(json["components_included"].map((x) => x)),
        activitiesTracked: List<String>.from(json["activities_tracked"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "image": image,
        "rating": rating,
        "brand": brand,
        "color": color,
        "connectivity": connectivity,
        "wireless": wireless,
        "compatibility": compatibility,
        "weight": weight,
        "resolution": resolution,
        "sensor": sensor,
        "screen_size": screenSize,
        "storage": storage,
        "ram": ram,
        "display": display,
        "heart_rate_monitor": heartRateMonitor,
        "waterproof": waterproof,
        "games_included": gamesIncluded,
        "output_power": outputPower,
        "suction_power": suctionPower,
        "battery_life": batteryLife,
        "mapping_technology": mappingTechnology,
        "storage_capacity": storageCapacity,
        "interface": productModelInterface,
        "max_speed": maxSpeed,
        "range": range,
        "weight_capacity": weightCapacity,
        "power": power,
        "speeds": speeds,
        "dpi_range": dpiRange,
        "buttons": buttons,
        "incline_levels": inclineLevels,
        "foldable": foldable,
        "voice_control": voiceControl,
        "capacity": capacity,
        "solar_panel_power": solarPanelPower,
        "material": material,
        "thickness": thickness,
        "brushing_modes": List<dynamic>.from(brushingModes.map((x) => x)),
        "timer": timer,
        "plants_included": List<dynamic>.from(plantsIncluded.map((x) => x)),
        "pot_material": potMaterial,
        "pot_color": potColor,
        "video_resolution": videoResolution,
        "field_of_view": fieldOfView,
        "adjustable_height": adjustableHeight,
        "max_height": maxHeight,
        "cooking_modes": List<dynamic>.from(cookingModes.map((x) => x)),
        "number_of_cameras": numberOfCameras,
        "night_vision": nightVision,
        "pieces_included": piecesIncluded,
        "levels_of_resistance": List<dynamic>.from(levelsOfResistance.map((x) => x)),
        "lumbar_support": lumbarSupport,
        "tools_included": List<dynamic>.from(toolsIncluded.map((x) => x)),
        "number_of_lights": numberOfLights,
        "light_color": lightColor,
        "size": size,
        "active_area": activeArea,
        "pen_pressure_levels": penPressureLevels,
        "brightness": brightness,
        "attachments": List<dynamic>.from(attachments.map((x) => x)),
        "adjustable_length": adjustableLength,
        "compatible_devices": List<dynamic>.from(compatibleDevices.map((x) => x)),
        "color_options": List<dynamic>.from(colorOptions.map((x) => x)),
        "wireless_charging_standard": wirelessChargingStandard,
        "components_included": List<dynamic>.from(componentsIncluded.map((x) => x)),
        "activities_tracked": List<dynamic>.from(activitiesTracked.map((x) => x)),
    };
}
